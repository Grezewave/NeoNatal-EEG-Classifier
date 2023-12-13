close all
clear
clc

% Specify the directory where the .mat files are saved
% Load data from CSV file
data_table = readtable('../Models/resultado.csv');

% Boxplot para Acurácia de Treino (terceira coluna)
figure;
boxplot([data_table.Acur_ciaDeTreino data_table.Acur_ciaDeTeste],{'Acurácia de Treino','Acurácia de Teste'})
%boxplot(data_table.Acur_ciaDeTreino, 'Labels', {'Acurácia de Treino'});
MEAN_TREINO = mean(data_table.Acur_ciaDeTreino)
MAX_TREINO = max(data_table.Acur_ciaDeTreino)
MIN_TREINO = min(data_table.Acur_ciaDeTreino)

% Boxplot para Acurácia de Teste (quarta coluna)
%figure;
% boxplot(data_table.Acur_ciaDeTeste, 'Labels', {'Acurácia de Teste'});
title('Boxplot - Acurácia');
ylabel('Acurácia');
MEAN_TESTE = mean(data_table.Acur_ciaDeTeste)
MAX_TESTE = max(data_table.Acur_ciaDeTeste)
MIN_TESTE = min(data_table.Acur_ciaDeTeste)

set(gcf, 'Position', [100, 100, 1000, 800]);
set(gcf, 'PaperSize', [10, 9]);
print('figures/boxplots2/accuracy.pdf', '-dpdf', '-r600');