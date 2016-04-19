%% Carry Ripple Adder

function [z, z_bin] = carry_ripple_add(a, b, full_adder, bits)
    a_bin = dec2bin(a, bits)
    b_bin = dec2bin(b, bits)
    
    c_in = 0;
    
    z_bin = zeros(1, bits + 1);
    
    for i = bits:-1:1
        a_bin_int = str2num(a_bin(i));
        b_bin_int = str2num(b_bin(i));
        [ c_out, sum ] = feval(full_adder, a_bin_int, b_bin_int, c_in);
        c_in = c_out;
        [c_out, sum]
        z_bin(1,i+1) = sum;
    end
    
    z_bin(1,1) = c_in;
    z_bin
    z = bi2de(z_bin, 'left-msb');
end        
    