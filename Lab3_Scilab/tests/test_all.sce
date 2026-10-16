clear;
clc;

// Run this script from the Lab3_Scilab folder.
exec("functions/delay.sci", -1);
exec("functions/advance.sci", -1);
exec("functions/fold.sci", -1);
exec("functions/add.sci", -1);
exec("functions/multi.sci", -1);
exec("functions/convolution.sci", -1);

mprintf("\n===== EXERCISE 1: DELAY =====\n");
[yn, yorigin] = delay([1 -2 3 6], 3, 1);
disp(yn, "yn =");
disp(yorigin, "yorigin =");

mprintf("\n===== EXERCISE 2: ADVANCE =====\n");
[yn, yorigin] = advance([1 -2 3 6], 3, 1);
disp(yn, "yn =");
disp(yorigin, "yorigin =");

mprintf("\n===== EXERCISE 3: FOLD =====\n");
[yn, yorigin] = fold([1 -2 3 6], 3);
disp(yn, "yn =");
disp(yorigin, "yorigin =");

mprintf("\n===== EXERCISE 4: ADD =====\n");
[yn, yorigin] = add([0 1 3 -2], 1, [1 1 2 3], 2);
disp(yn, "yn =");
disp(yorigin, "yorigin =");

mprintf("\n===== EXERCISE 5: MULTIPLY =====\n");
[yn, yorigin] = multi([0 1 3 -2], 1, [1 1 2 3], 2);
disp(yn, "yn =");
disp(yorigin, "yorigin =");

mprintf("\n===== EXERCISE 6: CONVOLUTION =====\n");
[yn, yorigin] = convolution([1 2 1], 2, [1 -1], 1);
disp(yn, "yn =");
disp(yorigin, "yorigin =");
