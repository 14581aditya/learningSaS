data Time;
input Time @@;
label Time = 'Time taken';
datalines;

5 66 5 8 25 4 21 3 25 7 5 4 15
13 11 18 9 24 37 9 44 49 108 18
101 32 60 22 5 18 6 33 8 15 101
15 15 10 24 8 20 15 17 12 6 19 25
56 8 84 23 7 15 14 59 7 16 50 12
2 14 16 27 9 135 14 15 20 20 3 14
8 97 5 48 27 10 16 29 5 14 6 6 12
22 12 32 8 104 31 19 6 30 32 92 9
5 35 15 8 29 7 19 13 11 7 8 9 6 17
2 11 40 72 10 11 13 19 6 40 6 5 66
17 28 36 4 7 17 1 8 21 6 25 35 28
53 30 6 3 35 9 9 15 2 21 36 6 3 9
12 17 40 12 17 5 208 19 6 16 38 39
13 62 19 28 33 94 16 38 11 6 26 32
21 7 5 9 10 144 34 35 45 9 40 19 31
7 90
;
title
'Normal Quantile-Quantile Plot for Time in every Country';
proc univariate data=Time noprint;
qqplot Time / normal (mu=est sigma=est)
odstitle = title
square;
run;