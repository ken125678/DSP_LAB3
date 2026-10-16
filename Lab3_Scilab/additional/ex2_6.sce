clear;
clc;

// Problem 2.6
// Input: x(n)=1 for 0<=n<=3, 0 elsewhere.
// This script illustrates the time-invariance tests requested in the problem.

// Use a finite plotting range for visualization.
n = -4:8;
x = zeros(1, length(n));
for i = 1:length(n)
    if n(i) >= 0 & n(i) <= 3 then
        x(i) = 1;
    end
end

// ------------------------------------------------------------
// System 1: T{x(n)} = x(n^2)
// ------------------------------------------------------------
y = zeros(1, length(n));
for i = 1:length(n)
    ni = n(i);
    if ni^2 >= 0 & ni^2 <= 3 then
        y(i) = 1;
    end
end

// y1(n) = y(n-2)
y1 = zeros(1, length(n));
for i = 1:length(n)
    src = n(i) - 2;
    if src == -1 | src == 0 | src == 1 then
        y1(i) = 1;
    end
end

// x2(n) = x(n-2), then y2(n) = T{x2(n)} = x2(n^2)
y2 = zeros(1, length(n));
for i = 1:length(n)
    ni = n(i);
    if ni^2 >= 2 & ni^2 <= 5 then
        y2(i) = 1;
    end
end

mprintf("\n2.6(b): System T{x(n)} = x(n^2)\n");
mprintf("y1(n) and y2(n) are different -> time-varying.\n");

scf();
clf();
subplot(2,1,1);
plot2d3(n, y1);
xgrid();
xtitle("y1(n)=y(n-2)", "n", "Amplitude");

subplot(2,1,2);
plot2d3(n, y2);
xgrid();
xtitle("y2(n)=T{x(n-2)}", "n", "Amplitude");

// ------------------------------------------------------------
// System 2: y(n)=x(n)-x(n-1)
// ------------------------------------------------------------
yc = zeros(1, length(n));
for i = 1:length(n)
    ni = n(i);

    xn = 0;
    if ni >= 0 & ni <= 3 then
        xn = 1;
    end

    xnm1 = 0;
    if (ni-1) >= 0 & (ni-1) <= 3 then
        xnm1 = 1;
    end

    yc(i) = xn - xnm1;
end

// Delay output by 2
yc1 = zeros(1, length(n));
for i = 1:length(n)
    ni = n(i);
    src = ni - 2;

    xs = 0;
    if src >= 0 & src <= 3 then
        xs = 1;
    end

    xsm1 = 0;
    if (src-1) >= 0 & (src-1) <= 3 then
        xsm1 = 1;
    end

    yc1(i) = xs - xsm1;
end

// Delay input by 2, then apply system
yc2 = zeros(1, length(n));
for i = 1:length(n)
    ni = n(i);

    x2n = 0;
    if ni >= 2 & ni <= 5 then
        x2n = 1;
    end

    x2nm1 = 0;
    if (ni-1) >= 2 & (ni-1) <= 5 then
        x2nm1 = 1;
    end

    yc2(i) = x2n - x2nm1;
end

mprintf("\n2.6(c): System y(n)=x(n)-x(n-1)\n");
mprintf("y1(n) and y2(n) are equal -> time-invariant.\n");

// ------------------------------------------------------------
// System 3: y(n)=n*x(n)
// ------------------------------------------------------------
yd = n .* x;

// Delay output by 2: y(n-2)
yd1 = zeros(1, length(n));
for i = 1:length(n)
    ni = n(i);
    src = ni - 2;
    if src >= 0 & src <= 3 then
        yd1(i) = src;
    end
end

// Delay input by 2, then apply system: n*x(n-2)
yd2 = zeros(1, length(n));
for i = 1:length(n)
    ni = n(i);
    if ni >= 2 & ni <= 5 then
        yd2(i) = ni;
    end
end

mprintf("\n2.6(d): System y(n)=n*x(n)\n");
mprintf("y1(n) and y2(n) are different -> time-varying.\n");

scf();
clf();
subplot(2,1,1);
plot2d3(n, yd1);
xgrid();
xtitle("Delayed output y(n-2)", "n", "Amplitude");

subplot(2,1,2);
plot2d3(n, yd2);
xgrid();
xtitle("Output after delaying input", "n", "Amplitude");
