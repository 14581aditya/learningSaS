Data one;
input IQ@@;
cards;
145 139 126 122 125 130 96 110 118 118
101 142 134 124 112 109 134 113 81 113
123 94 100 136 109 131 117 110 127 124
106 124 115 133 116 102 127 117 109 137
117 90 103 114 139 101 122 105 97 89
102 108 110 128 114 112 114 102 82 101
;
title 'Representation of fifth grader students IQ level';
proc univariate data = one;
histogram IQ /vscale = Count midpoints = 80 to 150 by 10 cfill = red barlabel = count vaxis= 0 to 20 by 5;
run;
quit;