clear
close all
clc

listDir = dir("../../Data58/");
fileList = [""];
j = 1;

for i=1:size(listDir)
    if ~isempty(strfind(listDir(i).name, ".mat"))
        fileList(j) = strcat(listDir(1).folder, strcat("/",listDir(i).name));
        j = j + 1;
    end
end

save("fileList")