%% Tests for approximate full adder cells
% AXA1

function test_full_adder(test_vector, func)
    for i = 1:length(test_vector)
        a = test_vector(i,[1:3]);
        [ c_out, sum ] = feval(func, a(1), a(2), a(3));
        assert(isequal([c_out sum] , test_vector(i,4:5)), ...
            'Failed for input %s => %s with function %s', ...
            mat2str(test_vector(i,:)), mat2str([c_out sum ]), func);
    end
end
