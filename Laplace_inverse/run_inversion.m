% Routine that demonstrates the inversion of the Laplace transformation of
% the given characteristic function
%
% Author: RS

clear all; close all;
xmin = 0;
xmax = 3;
s_xmax = 60;
s_points = 200;
t_points = 250;
noise_level = 5e-8;

lap_data = create_synthetic_data(xmin, s_xmax, s_points, noise_level);
t_vec = linspace(xmin, xmax, t_points);
coeff_mat = lap_coeff_mat(linspace(xmin, s_xmax, s_points), t_vec);
tol_vec = 2:4:14;

for k = 1:length(tol_vec)
    tol = (1/10)^(tol_vec(k));
    subplot(2, 2, k)
    f = truncate_SVD_solve(coeff_mat, lap_data, tol);
    plot_target_and_recn(t_vec, f, tol);
end
