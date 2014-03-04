% Routine evaluates the Laplace transform of the characteristic
% function (see f_eval.m) at given point
%
% Author: RS

function lap = lap_eval(s, k)

    if nargin == 1
       k = 10000; 
    end

    t_vec = linspace(0, 1, k)';
    t_k = t_vec(k);
    lap = zeros(length(s), 1);
    
    for ii = 1:length(s)
       lap(ii) = t_k/k.*(sum(exp(-s(ii).*t_vec)) - (0.5*(1 + exp(-s(ii)*t_vec(k)))));   
    end
end