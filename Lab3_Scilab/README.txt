LAB 3 - DIGITAL SIGNAL PROCESSING - SCILAB

Thu muc:
  functions/
      delay.sci
      advance.sci
      fold.sci
      add.sci
      multi.sci
      convolution.sci

  tests/
      test_all.sce

  additional/
      ex2_1.sce
      ex2_2.sce
      ex2_4.sce
      ex2_6.sce

  main.sce
  load_functions.sce

CACH CHAY NHANH
1. Mo Scilab.
2. Chon File -> Change Current Directory (hoac doi Current Directory)
   den thu muc Lab3_Scilab.
3. Mo file main.sce trong SciNotes.
4. Bam Execute / Run.
5. Sau khi main.sce chay xong, go lenh trong Console, vi du:
      [yn, yo] = delay([1 -2 3 6], 3, 1)
6. De test tat ca 6 ham:
      exec("tests/test_all.sce", -1)
7. De chay bai bo sung:
      exec("additional/ex2_1.sce", -1)
      exec("additional/ex2_2.sce", -1)
      exec("additional/ex2_4.sce", -1)
      exec("additional/ex2_6.sce", -1)

LUU Y VE XORIGIN
Neu:
    x(n) = {1, -2, 3, 6}
va gia tri 3 ung voi n=0, thi:
    xn = [1 -2 3 6]
    xorigin = 3

Chi so n cua vector duoc tinh:
    n = (1:length(xn)) - xorigin

CAC KET QUA TEST CHINH
Delay:
    delay([1 -2 3 6],3,1)
    yn = [1 -2 3 6]
    yorigin = 2

Advance:
    advance([1 -2 3 6],3,1)
    yn = [1 -2 3 6]
    yorigin = 4

Fold:
    fold([1 -2 3 6],3)
    yn = [6 3 -2 1]
    yorigin = 2

Add:
    add([0 1 3 -2],1,[1 1 2 3],2)
    yn = [1 1 3 6 -2]
    yorigin = 2

Multi:
    multi([0 1 3 -2],1,[1 1 2 3],2)
    yn = [0 0 2 9 0]
    yorigin = 2

Convolution:
    convolution([1 2 1],2,[1 -1],1)
    yn = [1 1 -1 -1]
    yorigin = 2

DE CHUP HINH CHO REPORT
- Chay tung ham.
- Chup cua so Console co yn va yorigin.
- Chup Figure hien thi tin hieu.
- Dua source code cua tung .sci vao report.
