%% Eular's Method Example

a = 20;
b = 2;
c = 5;

dt = 0.05;
tlast = 2;

iterations = round(tlast/dt);
xall = zeros(iterations, 1);

x = c;
for i = 1:iterations
    xall(i) = x;
    dxdt = a - b*x;
    x = x + dxdt*dt;
end

time = dt*(0:iterations-1)';

figure, grid on, hold on;
plot(time, xall);
title('Rate of X changing over time'), xlabel('t'), ylabel('x');
