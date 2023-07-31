filePath = "C:\Users\Emre\Desktop\Süt Kalitesi Tahminleme\milknew.csv";
data = readtable(filePath);
dfToCell = table2cell(data);
for row = 1 : 1 : height(data(:,8))
    if strcmp(dfToCell(row, 8), 'high')
        dfToCell(row, 8) = num2cell(3);
    elseif strcmp(dfToCell(row, 8), 'medium')
        dfToCell(row, 8) = num2cell(2);
    elseif strcmp(dfToCell(row, 8), 'low')
        dfToCell(row, 8) = num2cell(1);
    end
end
dfToTable = cell2table(dfToCell);
disp(dfToTable);