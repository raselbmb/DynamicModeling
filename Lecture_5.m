%Flouroscence Data

clc, clearvars, close all;

Data = readmatrix("sampledata1.DAT");
time = Data(:, 1);
f1 = Data(:, 2);
f2 = Data(:, 3);
f3 = Data(:, 4);

figure; grid on; hold on;
plot (time, f1, 'b');
plot (time, f2, 'g');
plot (time, f3, 'r');

title("Time vs Fluorescence", "FontSize", 14);
xlabel("Time"), ylabel("Fluorescence");
%% Normalize
%Flouroscence Data

clc, clearvars, close all;

Data = readmatrix("sampledata1.DAT");
time = Data(:, 1);
f1 = Data(:, 2);
f2 = Data(:, 3);
f3 = Data(:, 4);

figure; grid on; hold on;
plot (time, normalize(f1), 'b');
plot (time, normalize(f2), 'g');
plot (time, normalize(f3), 'r');

title("Time vs Fluorescence", "FontSize", 14);
xlabel("Time"), ylabel("Fluorescence");
%% Normalized

data = dlmread('sampledata1.DAT') ; 
time = data(:,1) ;
[minimum,index] = min(abs(time-50)) ;
f1 = data(:,2) ;
f1_norm = normalize(f1,index) ;
    
f2 = data(:,3) ;
f2_norm = normalize(f2,index) ;

f3 = data(:,4) ;
f3_norm = normalize(f3,index) ;

figure
hold on 
plot(time,f1_norm,'b')
plot(time,f2_norm,'g')
plot(time,f3_norm,'r')
