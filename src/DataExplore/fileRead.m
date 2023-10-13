close all
clear
clc

load("fileList.mat")
signals = {}

j = 1
for i = fileList
    load(i);
    if contains(i, '_HVS.')
        classification = 'HVS';
    elseif contains(i, '_PTA.')
        classification = 'TA';
    end
    signals{j} = Eeg(EEG_F4P4, classification);
    j = j + 1;
end

headers = signals{1}.get_headers();

% Nome do arquivo CSV
fileName = './eegPatternBandDHT.csv';

% Abrir o arquivo para escrita
fid = fopen(fileName, 'w');
fprintf(fid, '%s', headers);
fprintf(fid, '\n');

% Escrever os dados linha por linha
for i = 2:size(signals, 2)
    fprintf(fid, '%s\n', signals{i}.to_string());
end

% Fechar o arquivo
fclose(fid);

