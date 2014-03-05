% Routine truncates the singular values of the diagonal matrix produced by
% the SVD algprithm and solves the system (in the least square sence).
%
% Author: RS

function x = truncate_SVD_solve(A, b, tol)
    
    [U D V] = svd(A);
    D = truncate(D, tol);
    x = V * pinv(D) * U' * b;

end

function D = truncate(D, tol)

    n = min(size(D));
    for k = 1:n
        if D(k,k) < tol
            D(k,k) = 0;
        end
    end

end