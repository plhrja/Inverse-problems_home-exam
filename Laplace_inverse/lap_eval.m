% Routine evaluates the Laplace transform of the characteristic
% function (see f_eval.m) at given point.
%
% Author: RS

function lap = lap_eval(s)
    lap = -(1./s) .* (exp(-s) - 1);
    lap(isnan(lap)) = 1;
end