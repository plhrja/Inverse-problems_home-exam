% Routine used to illustrate the ill-posedness of the inverse of the
% Laplace transformation
%
% Author: RS

close all;
min = 10;
max = 100;
points = linspace(min, max, 2);

for k = 1:2
    subplot(1, 2, k);
    svd_plot(lap_coeff_mat(linspace(0, 1, points(k)), linspace(0, 1, 100)));
end