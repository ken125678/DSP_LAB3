clear;
clc;

exec("functions/fold.sci", -1);
exec("functions/add.sci", -1);

// x(n) = {2,3,4,5,6}, with n=0 at value 4
x = [2 3 4 5 6];
xorigin = 3;

[xf, of] = fold(x, xorigin);

[temp_even, oe] = add(x, xorigin, xf, of);
xe = temp_even / 2;

[temp_odd, oo] = add(x, xorigin, -xf, of);
xo = temp_odd / 2;

mprintf("\nProblem 2.4\n");
disp(xe, "Even part xe =");
disp(xo, "Odd part xo =");

n = -2:2;

scf();
clf();
subplot(3,1,1);
plot2d3(n, x);
xgrid();
xtitle("x(n)", "n", "Amplitude");

subplot(3,1,2);
plot2d3(n, xe);
xgrid();
xtitle("Even part", "n", "Amplitude");

subplot(3,1,3);
plot2d3(n, xo);
xgrid();
xtitle("Odd part", "n", "Amplitude");
