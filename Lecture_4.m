
a = randi([-10, 10], 1, 10);
disp ('Original Array:'); %[output:328e6ca2]
disp (a); %[output:093189d9]

for i = 1:length(a) %[output:group:35d8ac27]
    if a(i) < 0
        fprintf ('Negative value Detected at index %d: %d\n', i, a(i)); %[output:0a021ec2]
        a(i) = abs(i);
    end
end %[output:group:35d8ac27]

disp ('Updated array:'); %[output:31f888e5]
disp (a); %[output:13b12817]

%[appendix]
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":36}
%---
%[output:328e6ca2]
%   data: {"dataType":"text","outputData":{"text":"Original Array:\n","truncated":false}}
%---
%[output:093189d9]
%   data: {"dataType":"text","outputData":{"text":"    -7    10    10     0     6    -8    -2     9     6    10\n\n","truncated":false}}
%---
%[output:0a021ec2]
%   data: {"dataType":"text","outputData":{"text":"Negative value Detected at index 1: -7\nNegative value Detected at index 6: -8\nNegative value Detected at index 7: -2\n","truncated":false}}
%---
%[output:31f888e5]
%   data: {"dataType":"text","outputData":{"text":"Updated array:\n","truncated":false}}
%---
%[output:13b12817]
%   data: {"dataType":"text","outputData":{"text":"     1    10    10     0     6     6     7     9     6    10\n\n","truncated":false}}
%---
