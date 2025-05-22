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

% Numerically solve the ODE (for constants that are known beforehand)
% Runge-Kutta (4,5)
% MATLAB can only handle systems of linear first-order ODEs
% so we must convert mx''(t) + bx'(t) + kx(t) = 0 to a system:
% mx''(t) + bx'(t) + kx(t) = 0			x(0) = x0	x'(0) = v0
% 
% Let	x(t) = x(t)
%       v(t) = x'(t)	v'(t) = x''(t)
% 
% { mv'(t) + bv(t) + kx(t) = 0	v'(0) = v0
% { x'(t) = v(t)	    		x'(0) = x0
% 
% { x' = v          			x'(0) = x0
% { v' = -(b/m)v - (k/m)x		v'(0) = v0
% 
% ------------------------------------------
%
% [x']	=	[ v                 ]
% [v']	=	[ -(b/m)v - (k/m)x  ]
% 
% with
% 
% [x0] = [x0]
% [v0] = [v0]

% Define the system of equations as an anonymous function
% Note: Constants are in SI units
m = 4;
b = 4;
k = 15;
Y0 = [5, 3]; % Y = [position x, x-velocity v]
tspan = [min(time), max(time)]; % tmin, tmax
f = @(t, Y) [Y(2); -(b/m)*Y(2) - (k/m)*Y(1)];

% Simulate the system
[t, Y] = ode45(f, tspan, Y0);

figure;
plot(t, Y(:,1), "r"); % Only plot position (column 1)
xlabel("Time (s)");
ylabel("Displacement (m)");
title("Simulated Damped Harmonic Oscillator from Solving the ODE");

% Fit the closed-form solution to the ODE (for constants not known
% beforehand)

ftype = fittype("exp(-k*x) * (A*cos(w*x) + B*sin(w*x))");
foptions = fitoptions(ftype);
foptions.StartPoint = [3,3,0.5,2];
foptions.Lower = [0,0,0,0];
foptions.Upper = [10,10,3,10];

bestFit = fit(time, displacement, ftype, foptions);
disp(bestFit);

figure;
plot(bestFit, time, displacement);
xlabel("Time (s)");
ylabel("Displacement (m)");
title("Fitted Damped Harmonic Oscillator Behavior");
legend("Measured Data","Fit: x(t) = exp(-kt)(Acos(wt)+Bsin(wt))");