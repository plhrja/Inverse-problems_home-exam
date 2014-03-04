% Routine that plots the target-function and the reconstruction
%
% Author: RS

function plot_target_and_recn(t_vec, f, tol)

    plot(t_vec, f_eval(t_vec), 'linewidth', 2);
    hold on
    plot(t_vec, f, 'r-', 'linewidth', 2)
    
    xlabel('x');
    ylabel('f(x)');
    title('Reconstruction from Laplace transformation data');
    legend('Target', 'Reconstruction', 'Location', 'Southwest');
    text(1.7, 1, ['tol = ' num2str(tol)])
    axis([t_vec(1) t_vec(length(t_vec)) -0.3 1.3])
    hold off
end