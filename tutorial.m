% Modeling, Fitting, and Plotting Physical Systems
% Simple Example: Damped Harmonic Oscillator
% Recall: mx''(t) + bx'(t) + kx(t) = 0

% Import data
data = readtable('damped_oscillator_data.csv'); % Load the data file
disp(data(1:10,:)); % Print first 10 columns to ensure data is correct
time = data.time; % Extract time data
displacement = data.displacement; % Extract displacement data

% Plot data
figure;
plot(time, displacement);
xlabel("Time (s)");
ylabel("Displacement (m)");
title("Displacement of an Underdamped Harmonic Oscillator");