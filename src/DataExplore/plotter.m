close all
clear
clc

load("fileList.mat")
signals = {}

load(fileList(2))
signalTA1 = EEG_F4P4
load(fileList(6))
signalTA2 = EEG_F4P4

load(fileList(9))
signalHVS1 = EEG_F4P4
load(fileList(13))
signalHVS2 = EEG_F4P4

figure
subplot(1,2,1)
plot(signalTA1, 'r')
ylim([min(signalTA1)+min(signalTA1)/4 max(signalTA1)+max(signalTA1)/4])
title("EEG de padrão TA")
ylabel("Sinal")
subplot(1,2,2)
plot(signalTA2, 'r')
ylim([min(signalTA2)+min(signalTA2)/4 max(signalTA2)+max(signalTA2)/4])
title("EEG de padrão TA")
ylabel("Sinal")

set(gcf, 'Position', [100, 100, 1000, 350]);
set(gcf, 'PaperSize', [10, 4]);
print('figures/TA.pdf', '-dpdf', '-r600');

figure
subplot(1,2,1)
plot(signalHVS1)
ylim([min(signalHVS1)+min(signalHVS1)/4 max(signalHVS1)+max(signalHVS1)/4])
title("EEG de padrão HVS")
ylabel("Sinal")
subplot(1,2,2)
plot(signalHVS2)
ylim([min(signalHVS2)+min(signalHVS2)/4 max(signalHVS2)+max(signalHVS2)/4])
title("EEG de padrão HVS")
ylabel("Sinal")

set(gcf, 'Position', [100, 100, 1000, 350]);
set(gcf, 'PaperSize', [10, 4]);
print('figures/HVS.pdf', '-dpdf', '-r600');