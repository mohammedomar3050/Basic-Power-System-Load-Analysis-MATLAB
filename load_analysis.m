% Basic Power System Load Analysis
% Electrical Engineering - Power & Machines

clc;
clear;

% Load data in MW
load_MW = [10 15 20 18 22 25 19];

% Time index (hours)
time = 1:length(load_MW);

% Calculations
total_load = sum(load_MW);
average_load = mean(load_MW);
max_load = max(load_MW);

% Load limit
limit = 22;

% Display results
disp("Total Load (MW):");
disp(total_load);

disp("Average Load (MW):");
disp(average_load);

disp("Maximum Load (MW):");
disp(max_load);

% Overload check
if max_load > limit
    disp("Warning: Load exceeds the allowable limit!");
else
    disp("Load is within safe limits.");
end

% Plot Load Curve
figure;
plot(time, load_MW, 'o--', 'LineWidth', 2);
grid on;
title("Daily Load Curve");
xlabel("Time (Hours)");
ylabel("Load (MW)");
legend("Load Demand");
