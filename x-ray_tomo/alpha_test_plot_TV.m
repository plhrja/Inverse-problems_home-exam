%Routine that plots and loops through results of the alpha-tests
%
%Author: RS

thickline = 2;
thinline = 0.5;

load TV_alpha-test_3-3-2014 recnvec alphavec errorvec
load XRsparseTikhonov target

for k = 1:size(recnvec, 1)
   clf
   plot_alpha_TV(k);
   pause(.1);
end

hold off
plot(alphavec, errorvec, 'linewidth', thickline);
title('error vs. \alpha-values')
xlabel('\alpha')
ylabel('error')
grid on
axis([20 500 0.15 0.35])

[minimum_error, ind] = min(errorvec);
minimum_error
minimizing_alpha = alphavec(ind)

figure(2);
plot_alpha_TV(ind);