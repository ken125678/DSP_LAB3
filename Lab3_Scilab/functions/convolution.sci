function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    // y(n) = x(n) * h(n)

    Lx = length(xn);
    Lh = length(hn);

    yn = zeros(1, Lx + Lh - 1);

    for i = 1:Lx
        for j = 1:Lh
            yn(i+j-1) = yn(i+j-1) + xn(i) * hn(j);
        end
    end

    yorigin = xorigin + horigin - 1;

    nx = (1:Lx) - xorigin;
    nh = (1:Lh) - horigin;
    ny = (1:length(yn)) - yorigin;

    scf();
    clf();

    subplot(3,1,1);
    plot2d3(nx, xn);
    xgrid();
    xtitle("Input signal x(n)", "n", "Amplitude");

    subplot(3,1,2);
    plot2d3(nh, hn);
    xgrid();
    xtitle("Impulse response h(n)", "n", "Amplitude");

    subplot(3,1,3);
    plot2d3(ny, yn);
    xgrid();
    xtitle("Convolution y(n) = x(n) * h(n)", "n", "Amplitude");
endfunction
