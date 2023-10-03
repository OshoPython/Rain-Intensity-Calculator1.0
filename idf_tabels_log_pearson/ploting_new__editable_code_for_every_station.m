clc
clear all
data = xlsread('TEL AVIV COAST_Pearson_type3_IDF');
duration = [0.166 0.333 0.5 0.66 0.833 1 1.5 2 2.5 3 3.5 4 4.5 5 6];
duration_trans = duration.';
% Get the number of rows and columns in the data matrix
[numRows, numCols] = size(data);

% Plot each column of the data table in a separate graph on the same plot
figure;
hold on;

for i = 1:numCols
    plot(duration, data(:, i));
end

hold off;

% Set labels and title for the plot
xlabel('Duration [Hours]');
ylabel('Rain Intensity [mm\hr]');
title('IDF-Log Pearson type III for TEL AVIV COAST station ');

% Add a legend for each column
legend('2 Years', '5 Years', '10 Years','25 Years','50 Years' ...
    ,'100 Years', '200 Years', '500 Years','1000 Years'); % Add more legends as nee