data one;
input Group $ scores;
datalines;
CG 24
CG 43
CG 58
CG 71
CG 43
CG 49
CG 61
CG 44
CG 67
CG 49
CG 53
CG 56
CG 59
CG 52
CG 62
CG 54
CG 57
CG 33
CG 46
CG 43
CG 57
TG 42
TG 43
TG 55
TG 26
TG 62
TG 37
TG 33
TG 41
TG 19
TG 54
TG 20
TG 85
TG 46
TG 10
TG 17
TG 60
TG 53
TG 42
TG 37
TG 42
TG 55
TG 28
TG 48
;
PROC PRINT DATA= ONE;
proc means data = one;
class group;
var scores;
run;
proc ttest data=one alpha = 0.01;
class group;
var scores;
run;
quit;

