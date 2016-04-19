%% Test Bench
%% Full Adder Cells

accurate_adder_test_vector = [ 0 0 0 0 0 ; 0 0 1 0 1 ; 0 1 0 0 1 ; ...
        0 1 1 1 0 ; 1 0 0 0 1 ; 1 0 1 1 0 ; 1 1 0 1 0 ; 1 1 1 1 1 ];
axa1_test_vector = [ 0 0 0 0 0 ; 0 0 1 0 1 ; 0 1 0 1 0 ; ...
        0 1 1 0 1 ; 1 0 0 1 0 ; 1 0 1 0 1 ; 1 1 0 1 0 ; 1 1 1 1 1 ];
axa2_test_vector = [ 0 0 0 0 1 ; 0 0 1 0 1 ; 0 1 0 0 0 ; 0 1 1 1 0 ;...
        1 0 0 0 0 ; 1 0 1 1 0 ; 1 1 0 1 1 ; 1 1 1 1 1 ];
axa3_test_vector = [ 0 0 0 0 0 ; 0 0 1 0 1 ; 0 1 0 0 0 ; 0 1 1 1 0 ;...
    1 0 0 0 0 ; 1 0 1 1 0 ; 1 1 0 1 0 ; 1 1 1 1 1 ];

test_full_adder(accurate_adder_test_vector, 'full_adder')
test_full_adder(axa1_test_vector, 'axa1_full_adder')
test_full_adder(axa2_test_vector, 'axa2_full_adder')
test_full_adder(axa3_test_vector, 'axa3_full_adder')

sprintf('Full Adder Cell Tests Pass')

%% Carry Ripple Adder
samples = 1000

a = randi([0,2^30], 1, samples);
b = randi([0,2^30], 1, samples);

for i = 1:length(a)
    assert(isequal(carry_ripple_add(a(i),b(i),'full_adder',32), a(i) + b(i))) 
end

sprintf('Carry Ripple Tests Pass')


