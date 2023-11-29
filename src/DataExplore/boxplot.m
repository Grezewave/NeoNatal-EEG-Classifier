% Load data from CSV file
data_table = readtable('filteredBase.csv');

% Extract the 'zzclassification' column
classification_column = data_table.zzclassification;

% Create logical indices for HVS and TA
is_HVS = strcmp(classification_column, 'HVS');
is_TA = strcmp(classification_column, 'TA');

% Create variables for HVS and TA
HVS_data = data_table(is_HVS, :);
TA_data = data_table(is_TA, :);

% Display or perform operations on HVS_data and TA_data as needed
disp('HVS Data:');
disp(HVS_data);

disp('TA Data:');
disp(TA_data);

% Get the numeric column names
numeric_column_names = data_table.Properties.VariableNames(...
    ~ismember(data_table.Properties.VariableNames, 'zzclassification')...
);

% Loop through each numeric column
for i = 1:length(numeric_column_names)
    % Extract column data
    column_name = numeric_column_names{i};
    column_data = data_table.(column_name);
    
    % Create variables for HVS and TA
    HVS_column_data = column_data(is_HVS);
    TA_column_data = column_data(is_TA);
    
    % Save the variables to a .mat file
    save(['splittedFeatures/' column_name '_data.mat'], 'HVS_column_data', 'TA_column_data');
end