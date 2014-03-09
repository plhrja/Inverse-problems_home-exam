% Routine that demonstrates the inversion of the Laplace transformation of
% the given indicator function.
%
% Author: RS

clear all; close all;

% The domain in which the target and reconstruction are defined
xmin = 0; 
xmax = 3;

% The right endpoint of the domain in which measurements (synthetic data)
% are computed
s_xmax = 60;

% The amount of measurement (synthetic data) points
s_points = 30;

% The amount of points used in the calculation of the reconstruction and the
% target function
t_points = 4000;

noise_level = 1e-9;
lap_data = create_synthetic_data(xmin, s_xmax, s_points, noise_level);
t_vec = linspace(xmin, xmax, t_points);
coeff_mat = lap_coeff_mat(linspace(xmin, s_xmax, s_points), t_vec);
tol_vec = 2:4:14;

for k = 1:length(tol_vec)
    tol = (1/10)^(tol_vec(k)); %Threshold of how small singular values are discarded
    subplot(2, 2, k)
    f = truncate_SVD_solve(coeff_mat, lap_data, tol);
    plot_target_and_recn(t_vec, f, tol);    
end
