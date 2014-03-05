% Routine that plots the singular values of a matrix in a logaritmic scale.
%
% Author: RS

function svd_plot(A)
    sing_vals = svd(A);
    
    semilogy(sing_vals, 'linewidth', 2);
    grid on
    title('Graphing of singular values');
    xlabel('elem index (a)_{ii}');
    ylabel('value');
end