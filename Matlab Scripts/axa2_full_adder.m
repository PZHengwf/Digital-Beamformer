%% AXA2 Adder
% \begin{table}
%     \centering
%     \begin{tabular}{c c c | c | c}
%          A & B & $C_{in}$ & $C_{out}$ & Sum \\ \hline
%          0 & 0 & 0 & 0 & 1 \\
%          0 & 0 & 1 & 0 & 1 \\
%          0 & 1 & 0 & 0 & 0 \\
%          0 & 1 & 1 & 1 & 0 \\
%          1 & 0 & 0 & 0 & 0 \\
%          1 & 0 & 1 & 1 & 0 \\
%          1 & 1 & 0 & 1 & 1 \\
%          1 & 1 & 1 & 1 & 1 \\
%     \end{tabular}
%    
%     \caption{Truth Table for AXA2}
%     \label{tab:AXA2_Truth}
% \end{table}

function [c_out, sum] = axa2_full_adder(a, b, c_in)
    sum = not(xor(a,b));
    c_out = or(and(xor(a,b),c_in), and(a,b));
end