%% Standard Full Adder

function [c_out, sum] = full_adder(a, b, c_in)
    sum = xor(a,xor(c_in,b));
    c_out = or(and(a,b), and(c_in, xor(a, b)));
end