% Routine that computes and plots the Laplace transformation of given data
% (of the given indicator function).
%
% Author: RS

function plot_lap(vec)
    linewidth = 2;
    
    laplace = lap_eval(vec);
    plot(vec, laplace, 'linewidth', linewidth)
    grid on
    xlabel('x');
    ylabel('F(x)')
end