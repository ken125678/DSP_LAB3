function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    // y(n) = x1(n) + x2(n)

    n1_start = 1 - x1origin;
    n1_end   = length(x1n) - x1origin;

    n2_start = 1 - x2origin;
    n2_end   = length(x2n) - x2origin;

    nmin = min(n1_start, n2_start);
    nmax = max(n1_end, n2_end);
    n = nmin:nmax;

    x1 = zeros(1, length(n));
    x2 = zeros(1, length(n));

    index1 = (n1_start:n1_end) - nmin + 1;
    index2 = (n2_start:n2_end) - nmin + 1;

    x1(index1) = x1n;
    x2(index2) = x2n;

    yn = x1 + x2;
    yorigin = 1 - nmin;

    scf();
    clf();

    subplot(3,1,1);
    plot2d3(n1_start:n1_end, x1n);
    xgrid();
    xtitle("x1(n)", "n", "Amplitude");

    subplot(3,1,2);
    plot2d3(n2_start:n2_end, x2n);
    xgrid();
    xtitle("x2(n)", "n", "Amplitude");

    subplot(3,1,3);
    plot2d3(n, yn);
    xgrid();
    xtitle("y(n) = x1(n) + x2(n)", "n", "Amplitude");
endfunction
