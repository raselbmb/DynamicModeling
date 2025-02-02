% Define the ODE function
function dydt = glucoseODE(t, G, Vin, k1)
    ATP = 3; % Assuming constant ATP concentration for simplicity
    dydt = Vin - k1 * G * ATP;
end

% Main script
% Parameters
Vin = 0.36;
k1 = 0.02;
tspan = [0 100]; % Time span from 0 to 100 (adjust as needed)
G0 = 0; % Initial condition for glucose concentration

% Solve ODE
[t, G] = ode45(@(t,G) glucoseODE(t, G, Vin, k1), tspan, G0);

% Create plot
figure;
plot(t, G, 'b-', 'LineWidth', 2);
grid on;
xlabel('Time (t)');
ylabel('Glucose Concentration [G]');
title('Glucose Concentration vs Time');