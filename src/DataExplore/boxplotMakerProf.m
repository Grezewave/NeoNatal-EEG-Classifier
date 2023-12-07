clear all;
close all;
clc


figure, 
load 'splittedFeatures/mean_data'
subplot(3,3,1), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAmplitude_data'
subplot(3,3,2), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('MML (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/median_data'
subplot(3,3,3), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Mediana (p-valor: ', str, ')');
title(str2)


load 'splittedFeatures/variance_data'
subplot(3,3,4), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Variância (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/skewness_data'
subplot(3,3,5), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Assimetria (p-valor: ', str, ')');
title(str2)


load 'splittedFeatures/kurtosis_data'
subplot(3,3,6), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Curtose (p-valor: ', str, ')');
title(str2)


load 'splittedFeatures/totalPower_data'
subplot(3,3,7), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Potência Total (p-valor: ', str, ')');
title(str2)
yticklabels({'0', '20000', '40000', '60000'})

load 'splittedFeatures/meanFrequency_data'
subplot(3,3,8), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Frequência Média (p-valor: ', str, ')');
title(str2)


load 'splittedFeatures/medianFrequency_data'
subplot(3,3,9), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Frequência Mediana (p-valor: ', str, ')');
title(str2)


set(gcf, 'Position', [100, 100, 1000, 800]);
set(gcf, 'PaperSize', [10, 9]);
print('figures/boxplots2/boxplot1.pdf', '-dpdf', '-r600');


%
%BANDA DELTA
%

figure

load 'splittedFeatures/meandelta_data'
subplot(2,3,1), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média do sinal(\delta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAmplitudedelta_data'
subplot(2,3,2), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('MML(\delta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAdelta_data'
subplot(2,3,3), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da envelope(\delta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanFidelta_data'
subplot(2,3,4), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da |F_i|(\delta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/powerdelta_data'
subplot(2,3,5), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Potência(\delta) (p-valor: ', str, ')');
title(str2)

set(gcf, 'Position', [100, 100, 1000, 800]);
set(gcf, 'PaperSize', [10, 9]);
print('figures/boxplots2/boxplot2.pdf', '-dpdf', '-r600');

%
% PARÂMETROS PARA A BANDA TETA
%

figure, 

load 'splittedFeatures/meantheta_data'
subplot(2,3,1), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média do sinal(\theta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAmplitudetheta_data'
subplot(2,3,2), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('MML(\theta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAtheta_data'
subplot(2,3,3), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da envelope(\theta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanFitheta_data'
subplot(2,3,4), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da |F_i|(\theta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/powertheta_data'
subplot(2,3,5), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Potência(\theta) (p-valor: ', str, ')');
title(str2)

set(gcf, 'Position', [100, 100, 1000, 800]);
set(gcf, 'PaperSize', [10, 9]);
print('figures/boxplots2/boxplot3.pdf', '-dpdf', '-r600');

%
% PARÂMETROS PARA A BANDA ALFA
%

figure, 

load 'splittedFeatures/meanalpha_data'
subplot(2,3,1), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média do sinal(\alpha) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAmplitudealpha_data'
subplot(2,3,2), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('MML(\alpha) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAalpha_data'
subplot(2,3,3), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da envelope(\alpha) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanFialpha_data'
subplot(2,3,4), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da |F_i|(\alpha) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/poweralpha_data'
subplot(2,3,5), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Potência(\alpha) (p-valor: ', str, ')');
title(str2)

set(gcf, 'Position', [100, 100, 1000, 800]);
set(gcf, 'PaperSize', [10, 9]);
print('figures/boxplots2/boxplot4.pdf', '-dpdf', '-r600');

%
% PARÂMETROS PARA A BANDA BETA
%

figure, 

load 'splittedFeatures/meanbeta_data'
subplot(2,3,1), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média do sinal(\beta) (p-valor: ', str, ')');
title(str2)
ylabel('x10^{-3}')

load 'splittedFeatures/meanAmplitudebeta_data'
subplot(2,3,2), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('MML(\beta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAbeta_data'
subplot(2,3,3), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da envelope(\beta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanFibeta_data'
subplot(2,3,4), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da |F_i|(\beta) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/powerbeta_data'
subplot(2,3,5), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Potência(\beta) (p-valor: ', str, ')');
title(str2)
set(gcf, 'Position', [100, 100, 1000, 800]);
set(gcf, 'PaperSize', [10, 9]);
print('figures/boxplots2/boxplot5.pdf', '-dpdf', '-r600');

%
% PARÂMETROS PARA A BANDA GAMA
%

figure, 

load 'splittedFeatures/meangamma_data'
subplot(2,3,1), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média do sinal(\gamma) (p-valor: ', str, ')');
title(str2)
ylabel('x10^{-3}')

load 'splittedFeatures/meanAmplitudegamma_data'
subplot(2,3,2), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('MML(\gamma) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanAgamma_data'
subplot(2,3,3), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da envelope(\gamma) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/meanFigamma_data'
subplot(2,3,4), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Média da |F_i|(\gamma) (p-valor: ', str, ')');
title(str2)

load 'splittedFeatures/powergamma_data'
subplot(2,3,5), boxplot([HVS_column_data TA_column_data],{'HVS','TA'})
[P, H]= ranksum(HVS_column_data,TA_column_data)
str=num2str(P);
str2=strcat('Potência(\gamma) (p-valor: ', str, ')');
title(str2)
set(gcf, 'Position', [100, 100, 1000, 800]);
set(gcf, 'PaperSize', [10, 9]);
print('figures/boxplots2/boxplot6.pdf', '-dpdf', '-r600');

