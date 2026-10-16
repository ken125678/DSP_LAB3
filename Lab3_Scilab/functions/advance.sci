function [yn, yorigin] = advance(xn, xorigin, k)
    // y(n) = x(n+k), k > 0

    if k <= 0 then
        error("k must be greater than 0");
    end

    yn = xn;
    yorigin = xorigin + k;

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
    xtitle("Advanced signal y(n) = x(n+k)", "n", "Amplitude");
endfunction
