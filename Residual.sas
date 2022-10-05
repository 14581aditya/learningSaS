option ls=90 ps=90;
title 'Fat gain versus NEA';
data one;
input Nonexercise_activity Fat;
cards;
-94 4.2
-57 3.0
-29 3.7
135 2.7
143 3.2
151 3.6
245 2.4
355 1.3
392 3.8
473 1.7
486 1.6
535 2.2
571 1.0
580 0.4
620 2.3
690 1.1
;
title 'Fat gain versus increase in Nonexercise activity';
ods graphics on/ width=6in height=6in;
proc univariate data=one;
run;
quit;
proc sgplot data=one;
scatter x=Nonexercise_activity y=Fat;
reg x=Nonexercise_activity y=Fat / lineattrs=(color=red);
xaxis label='Nonexercise activity(calories)' values=(-200 to 1000 by 200); yaxis label='Fat gain (kilograms)' values=(0 to 6 by 1);
run;
proc reg data=one corr lineprinter;
var Fat Nonexercise_activity;
model Fat=Nonexercise_activity /r;
output out=b;
plot residual.*Nonexercise_activity / symbol="o";
run;
quit;

