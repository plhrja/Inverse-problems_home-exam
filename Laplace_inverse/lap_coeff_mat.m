% Routine constructs the coefficient-matrix of the linear model of the
% inversion of the Laplace-transformation
%
% Author: RS

function lap = lap_coeff_mat(s, k)

    if nargin == 1
       k = length(s) * 10; 
    end
    
    t_vec = linspace(0, 1, k)';
    t_k = t_vec(k);
    lap = meshgrid(exp(-s), zeros(1, k))';
    
    for ii = 1:length(lap)
        lap(:,ii) = lap(:,ii).^(t_vec(ii));
    end
    lap(:,1) = 0.5 * lap(:,1);
    lap(:,k) = 0.5 * lap(:,k);
    lap = t_k/k .* lap;

end