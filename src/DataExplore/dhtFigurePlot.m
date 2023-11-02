% Carregue os dados do arquivo CSV
data = readtable('dht_data.csv');

% Nomes das colunas
colunas = data.Properties.VariableNames;

% Separe as colunas em grupos de 2
num_colunas = numel(colunas);
num_grupos = num_colunas / 2;

for grupo = 1:num_grupos
    % Crie uma nova figura
    figure;

    % Plote cada coluna do grupo atual
    for coluna = 1:2
        subplot(2, 1, coluna);

        % Selecione a coluna apropriada
        coluna_atual = data.(colunas{(grupo - 1) * 2 + coluna});

        % Plote as classes TA e HVS
        classes = unique(data.Class); % Supondo que a coluna com classes seja chamada 'Class'
        for i = 1:length(classes)
            classe = classes{i};
            indices = data.Class == classe;
            plot(coluna_atual(indices), 'DisplayName', classe);
            hold on;
        end

        % Adicione rótulos e legenda
        title(colunas{(grupo - 1) * 2 + coluna});
        legend('Location', 'Best');
    end

    % Ajuste os títulos e rótulos das figuras
    suptitle(['Gráfico para Grupo ' num2str(grupo)]);
end
