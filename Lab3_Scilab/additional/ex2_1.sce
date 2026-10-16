clear;
clc;

exec("functions/delay.sci", -1);
exec("functions/fold.sci", -1);

// Problem 2.1
// x(n) = 1+n/3 for -3 <= n <= -1
//        1       for  0 <= n <= 3
//        0       elsewhere

n = -3:3;
x = [0 1/3 2/3 1 1 1 1];
xorigin = 4;

scf();
clf();
plot2d3(n, x);
xgrid();
xtitle("Problem 2.1(a): x(n)", "n", "Amplitude");

// (b1) Fold first, then delay by 4
[xf, of] = fold(x, xorigin);
[y1, o1] = delay(xf, of, 4);

mprintf("\n2.1(b1) Fold then delay by 4:\n");
disp(y1, "y1 =");
disp(o1, "origin =");

// (b2) Delay first by 4, then fold
[xd, od] = delay(x, xorigin, 4);
[y2, o2] = fold(xd, od);

mprintf("\n2.1(b2) Delay by 4 then fold:\n");
disp(y2, "y2 =");
disp(o2, "origin =");

// (c) x(-n+4) is the same as fold first, then delay by 4.
mprintf("\n2.1(c): x(-n+4) is the result of (b1).\n");

// (e) One valid impulse/step expression:
// x(n) = (1/3)delta(n+2) + (2/3)delta(n+1) + u(n) - u(n-4)
