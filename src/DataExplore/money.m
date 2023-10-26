% Parâmetros
investimento_mensal = 1000;  % Valor investido por mês
taxa_mensal = 0.01;  % Taxa de juros mensal (1%)
meses = 240;  % Número de meses

% Cálculo do montante
montante = zeros(1, meses);
for i = 1:meses
    montante(i) = investimento_mensal;
    if i > 1
        montante(i) = montante(i) + montante(i-1);
    end
    montante(i) = montante(i) * (1 + taxa_mensal);
end

% Destacar retas verticais a cada 12 meses
meses_por_ano = 12;
anos = meses / meses_por_ano;
figure;
plot(1:meses, montante);
hold on;
for i = 1:anos
    linha_vertical = i * meses_por_ano;
    plot([linha_vertical, linha_vertical], [0, max(montante)], 'r--');
end
hold off;

title('Evolução do Montante de Investimento');
xlabel('Meses');
ylabel('Montante (R$)');
