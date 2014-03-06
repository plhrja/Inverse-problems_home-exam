% Evaluates the given indicator function, that is
% 
% f(t) = 1 if 0<=t<=1, else f(t) = 0
%
% Author: RS

function ft = f_eval(t)
    ft = zeros(length(t), 1);
    for k = 1:length(t)
        if t(k) <= 1 && t(k) >= 0
            ft(k) = 1;
        else
            ft(k) = 0;
        end
    end
end