%% AXA3 Adder
% \begin{table}
%     \centering
%     \begin{tabular}{c c c | c | c}
%          A & B & $C_{in}$ & $C_{out}$ & Sum \\ \hline
%          0 & 0 & 0 & 0 & 0 \\
%          0 & 0 & 1 & 0 & 1 \\
%          0 & 1 & 0 & 0 & 0 \\
%          0 & 1 & 1 & 1 & 0 \\
%          1 & 0 & 0 & 0 & 0 \\
%          1 & 0 & 1 & 1 & 0 \\
%          1 & 1 & 0 & 1 & 0 \\
%          1 & 1 & 1 & 1 & 1 \\
%     \end{tabular}
%    
%     \caption{Truth Table for AXA3}
%     \label{tab:AXA3_Truth}
% \end{table}

function [c_out, sum] = axa3_full_adder(a, b, c_in)
    sum = and(not(xor(a,b)),c_in);
    c_out = or(and(xor(a,b),c_in), and(a,b));
end