close all
clear
clc

% Specify the directory where the .mat files are saved
directory_path = 'splittedFeatures/';

desired_columns = {'kurtosis','mean','meanAmplitude','median','skewness','totalPower','variance','meandelta','meanAmplitudedelta','powerdelta','meanAdelta','meanFidelta','meanalpha','meanAmplitudealpha','poweralpha','meanAalpha','meanFialpha','meantheta','meanAmplitudetheta','powertheta','meanAtheta','meanFitheta','meanbeta','meanAmplitudebeta','powerbeta','meanAbeta','meanFibeta','powergamma'};
column_names_portuguese = {'Curtose','Média','Média dos máximos locais','Mediana','Assimetria','Potência Total','Variância','Média \delta','Média dos máximos locais \delta','Potência \delta','Média A \delta','Média |F_i| \delta','Média \alpha','Média dos máximos locais \alpha','Potência \alpha','Média A \alpha','Média |F_i| \alpha','Média \theta','Média dos máximos locais \theta','Potência \theta','Média A \theta','Média |F_i| \theta','Média \beta','Média dos máximos locais \beta','Potência \beta','Média A \beta','Média |F_i| \beta','Potência \gamma'};

% Get the list of .mat files in the directory
mat_files = dir(fullfile(directory_path, '*.mat'));
j = 0
figure
% Loop through each .mat file
for i = 1:length(desired_columns)
    % Load the data from the .mat file
    mat_file_path = fullfile(directory_path, strcat(desired_columns(i), "_data.mat"));
    loaded_data = load(mat_file_path);
    
    % Extract HVS and TA data
    HVS_data = loaded_data.HVS_column_data;
    TA_data = loaded_data.TA_column_data;
    
    % Determine the number of data points in each group
    num_HVS = length(HVS_data);
    num_TA = length(TA_data);
    
    % Create a boxplot with separate positions for 'HVS' and 'TA'
    position = rem(i, 6)
    if (position == 1)
        filename = strcat(strcat('figures/boxplots/boxplot', int2str(j)),'.pdf')
        print(filename, '-dpdf', '-r600');
        j = j + 1
        figure;
        set(gcf, 'Position', [100, 100, 800, 600]);

        set(gcf, 'PaperSize', [9, 7]);
    end
    if (position == 0)
        position = 6
    end

    subplot(2,3,position)
    boxplot([[HVS_data; nan(num_TA, 1)] [nan(num_HVS, 1);TA_data]], 'Labels', {'HVS', 'TA'});
    
    % Set plot title and axis labels
    title([strrep(column_names_portuguese(i), '_data.mat', '')]);
    
    % Save the boxplot figure as an image (optional)
    %saveas(gcf, fullfile(directory_path, [strrep(mat_files(i).name, '_data.mat', ''), '_boxplot.png']));
end

filename = strcat(strcat('figures/boxplots/boxplot', int2str(j)),'.pdf')
print(filename, '-dpdf', '-r600');
