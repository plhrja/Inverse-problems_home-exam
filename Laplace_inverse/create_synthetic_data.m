% Routine that creates synthetic noisy data (measurements) for the Laplace transformation 
%
% Author: RS

function data = create_synthetic_data(xmin, xmax, points, noise_level)
    x_vals = linspace(xmin, xmax, points)';
    data = lap_eval(x_vals) + ((rand(points, 1) - 0.5) * 2 * noise_level);
end