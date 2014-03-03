% Plot the results of routine XRsparseD_aTV_comp.m
%
% Jennifer Mueller and Samuli Siltanen, October 2012

% Plot parameters
fsize     = 12;
thinline  = .5;
thickline = 2;

% Load reconstruction
load XRsparse_aTV recn alpha target obj

% Compute relative errors
err_squ = norm(target(:)-recn(:))/norm(target(:));

% Plot reconstruction image
figure(1)
clf
imagesc(max(0,[target,recn]).^.5,[0,1])
colormap gray
axis equal
axis off
title(['Approximate TV: error ', num2str(round(err_squ*100)), '%'])

% Plot profile of reconstruction
figure(2)
clf
plot(target(end/2,:),'k','linewidth',thinline)
hold on
plot(recn(end/2,:),'r','linewidth',thickline)
xlim([1 size(recn,1)])
axis square
box off
title('Profile of approximate TV reconstruction')

% Plot evolution of objective function
figure(3)
clf
semilogy(obj,'*-')
axis square
title('Values of objective function during iteration')


