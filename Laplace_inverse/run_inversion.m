% Routine that demonstrates the inversion of the Laplace transformation of
% the given characteristic function
%
% Author: RS

clear all; close all;
xmin = 0;
xmax = 3;
s_xmax = 100;
s_points = 500;
t_points = 1000;
noise_level = 1e-8;

lap_data = create_synthetic_data(xmin, s_xmax, s_points, noise_level);
t_vec = linspace(xmin, xmax, t_points);
coeff_mat = lap_coeff_mat(linspace(xmin, s_xmax, s_points), t_vec);

for k = 2:2:16
    tol = (1/10)^k;
    f = truncate_SVD_solve(coeff_mat, lap_data, tol);
    clf;
    plot_target_and_recn(t_vec, f, tol);
    pause();
end

