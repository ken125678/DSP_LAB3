function [yn, yorigin] = fold(xn, xorigin)
    // y(n) = x(-n)

    N = length(xn);
    yn = xn($:-1:1);
    yorigin = N - xorigin + 1;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;

    scf();
    clf();

    subplot(2,1,1);
    plot2d3(nx, xn);
    xgrid();
    xtitle("Input signal x(n)", "n", "Amplitude");

    subplot(2,1,2);
    plot2d3(ny, yn);
    xgrid();
    xtitle("Folded signal y(n) = x(-n)", "n", "Amplitude");
endfunction
