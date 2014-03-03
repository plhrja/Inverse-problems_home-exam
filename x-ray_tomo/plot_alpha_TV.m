function plot_alpha_TV(ind)
%Plots the targetfunction and the reconstruction with a specified lambda
%(by index from the alpha-vector)
%
%Author: RS

    thickline = 2;
    thinline = 0.5;

    load TV_alpha-test_3-3-2014 recnvec alphavec errorvec
    load XRsparseTikhonov target

    plot(target(end/2,:),'k','linewidth',thinline)
    hold on
    plot(recnvec(ind,:),'r','linewidth',thickline)

    title(['\alpha = ' num2str(alphavec(ind))]);
    text(175, 0.8, ['error = ' num2str(round(errorvec(ind) * 1000)/10), '%']);
    axis([1 size(recnvec,2), -0.2, 1.01])
    axis square
    box off
end