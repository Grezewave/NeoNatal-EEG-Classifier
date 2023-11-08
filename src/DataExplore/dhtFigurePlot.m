close all
clear
clc

opts = detectImportOptions('splitted/dht_data.csv');
opts.VariableNamingRule = 'preserve';
data = readtable('splitted/dht_data.csv', opts)

% Name of columns
columns = data.Properties.VariableNames;

% Split columns in bands
num_columns = numel(columns);
num_bands = num_columns / 2;

for band = 1:num_bands
    figure;

    % Plot

    % Select column of table
    coluna_atual = [data.(columns{(band - 1) * 2 + 1}) data.(columns{(band - 1) * 2 + 2})]

    % Plot TA HVS
    classes = unique(data.zzclassification);
    for i = 1:length(classes)
        classe = classes{i};
        indices = strcmp(data.zzclassification, classe);
        scatter(coluna_atual(indices,2), coluna_atual(indices,1), 'DisplayName', classe)
        ylabel('A[i]')
        xlabel('|F[i]|')
        hold on;
    end

    % Add figure texts
    title(columns{(band - 1) * 2 + 1});
    legend('Location', 'Best');

    % Extract items for file name
    columnName = columns{(band - 1) * 2 + 1}
    index = strfind(columnName,' - ')
    fileName = columnName(index + 3:end);
    filePath = strcat(strcat('figures/',fileName),'.pdf')

    set(gcf, 'Position', [100, 100, 800, 600]);
    print(filePath, '-dpdf', '-r600');
end
