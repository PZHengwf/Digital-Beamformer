%% AXA1 Adder
% \begin{table}
%     \centering
%     \begin{tabular}{c c c | c | c}
%          A & B & $C_{in}$ & $C_{out}$ & Sum \\ \hline
%          0 & 0 & 0 & 0 & 0 \\
%          0 & 0 & 1 & 0 & 1 \\
%          0 & 1 & 0 & 1 & 0 \\
%          0 & 1 & 1 & 0 & 1 \\
%          1 & 0 & 0 & 1 & 0 \\
%          1 & 0 & 1 & 0 & 1 \\
%          1 & 1 & 0 & 1 & 0 \\
%          1 & 1 & 1 & 1 & 1 \\
%     \end{tabular}
%    
%     \caption{Truth Table for AXA1}
%     \label{tab:AXA1_Truth}
% \end{table}

function [c_out, sum] = axa1_full_adder(a, b, c_in)
    sum = c_in;
    c_out = not(or(and(xor(a,b),c_in),and(not(a),not(b))));
end