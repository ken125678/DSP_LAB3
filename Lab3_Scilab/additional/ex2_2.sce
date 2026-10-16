clear;
clc;

exec("functions/delay.sci", -1);
exec("functions/advance.sci", -1);
exec("functions/fold.sci", -1);
exec("functions/add.sci", -1);

// Figure P2.2:
// n = -1,0,1,2 -> x(n)=1
// n = 3,4      -> x(n)=1/2
x = [1 1 1 1 0.5 0.5];
xorigin = 2;

// (a) x(n-2)
[ya, oa] = delay(x, xorigin, 2);
mprintf("\n2.2(a) x(n-2):\n");
disp(ya, "y =");
disp(oa, "origin =");

// (b) x(4-n) = fold, then delay 4
[xf, of] = fold(x, xorigin);
[yb, ob] = delay(xf, of, 4);
mprintf("\n2.2(b) x(4-n):\n");
disp(yb, "y =");
disp(ob, "origin =");

// (c) x(n+2)
[yc, oc] = advance(x, xorigin, 2);
mprintf("\n2.2(c) x(n+2):\n");
disp(yc, "y =");
disp(oc, "origin =");

// (d) x(n)u(2-n): keep samples for n <= 2
n = (1:length(x)) - xorigin;
yd = x;
for i = 1:length(n)
    if n(i) > 2 then
        yd(i) = 0;
    end
end
mprintf("\n2.2(d) x(n)u(2-n):\n");
disp(yd, "y =");

// (e) x(n-1)delta(n-3) = delta(n-3), since x(2)=1
mprintf("\n2.2(e): x(n-1)delta(n-3) = delta(n-3)\n");

// (f) x(n^2)
// Nonzero at n = -2,-1,0,1,2 with values [0.5,1,1,1,0.5]
nf = -2:2;
yf = [0.5 1 1 1 0.5];
scf();
clf();
plot2d3(nf, yf);
xgrid();
xtitle("Problem 2.2(f): x(n^2)", "n", "Amplitude");

// (g) even part
[xf, of] = fold(x, xorigin);
[temp, oe] = add(x, xorigin, xf, of);
xe = temp / 2;

mprintf("\n2.2(g) Even part:\n");
disp(xe, "xe =");
disp(oe, "origin =");

// (h) odd part
[temp2, oo] = add(x, xorigin, -xf, of);
xo = temp2 / 2;

mprintf("\n2.2(h) Odd part:\n");
disp(xo, "xo =");
disp(oo, "origin =");
