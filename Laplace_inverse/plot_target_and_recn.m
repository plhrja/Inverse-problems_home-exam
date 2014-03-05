% Routine that plots the target-function and the reconstruction
%
% Author: RS

function plot_target_and_recn(t_vec, f, tol)
    plot(t_vec, f_eval(t_vec));
    hold on
    plot(t_vec, f, 'r-')
    
    error = round(norm(f_eval(t_vec) - f)/norm(f_eval(t_vec)) * 1000)/10;
    labelfontsize = 10;
    
    xlabel('x','fontsize', labelfontsize);
    ylabel('f(x)','fontsize', labelfontsize);
    title('Reconstruction from Laplace transformation data','fontsize', labelfontsize);
    
    l = legend('Target', 'Reconstruction', 'Location', 'Northeast');
    set(l,'fontsize', labelfontsize);
    set(l,'fontweight', 'light');
    
    text(0.2, 0, ['tol = ' num2str(tol) '\newlineerror = ' num2str(error) '%'], 'fontsize', labelfontsize);
    
    axis([t_vec(1) t_vec(length(t_vec)) -0.3 1.3]);
    set(gca, 'fontsize', 9);
    hold off
    
    scrsize=get(0,'Screensize');
    set(gcf,'Position',scrsize)
end