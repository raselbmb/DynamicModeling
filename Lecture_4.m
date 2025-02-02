a = randi([-10, 10], 1, 10);
disp ('Original Array:');
disp (a);

for i = 1:length(a)
    if a(i) < 0
        fprintf ('Negative value Detected at index %d: %d\n', i, a(i));
        a(i) = abs(i);
    end
end

disp ('Updated array:');
disp (a);