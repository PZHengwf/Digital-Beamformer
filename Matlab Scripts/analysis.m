close all;
clear;

samples = 1000;

% analysis over small range
a = randi([0,2^10], 1, samples);
b = randi([0,2^10], 1, samples);

res = zeros(1,1000);

for i = 1:length(a)
    assert(isequal(carry_ripple_add(a(i),b(i),'full_adder',32), a(i) + b(i)))
    res(1,i) = carry_ripple_add(a(i),b(i),'axa2_full_adder',32) - (a(i) + b(i));
end

figure
histogram(res)
