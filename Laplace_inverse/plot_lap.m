% Routine that computes and plots the Laplace transformation of given data
% (of the given characteristic function).
%
% Author: RS

function plot_lap(vec, points)
    
    if nargin == 1
       points = 100; 
    end
    linewidth = 2;
    
    laplace = lap_eval(vec, points);
    plot(vec, laplace, 'linewidth', linewidth)
    grid on
    xlabel('x');
    ylabel('F(x)')

end