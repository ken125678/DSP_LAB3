clear;
clc;

// IMPORTANT:
// In Scilab, first set the Current Directory to the Lab3_Scilab folder,
// then run this file.

exec("functions/delay.sci", -1);
exec("functions/advance.sci", -1);
exec("functions/fold.sci", -1);
exec("functions/add.sci", -1);
exec("functions/multi.sci", -1);
exec("functions/convolution.sci", -1);

mprintf("Lab 3 functions are loaded successfully.\n");
mprintf("Examples:\n");
mprintf("  [yn,yo] = delay([1 -2 3 6],3,1)\n");
mprintf("  [yn,yo] = advance([1 -2 3 6],3,1)\n");
mprintf("  [yn,yo] = fold([1 -2 3 6],3)\n");
mprintf("  [yn,yo] = add([0 1 3 -2],1,[1 1 2 3],2)\n");
mprintf("  [yn,yo] = multi([0 1 3 -2],1,[1 1 2 3],2)\n");
mprintf("  [yn,yo] = convolution([1 2 1],2,[1 -1],1)\n");
