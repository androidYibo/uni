syms a x1 x2
Q = [2+2*a 0; 0 2];
b = [3-2*a; 0];
x = [x1 x2];
1/2*x*Q*x.'+x*b
inv(Q)*b

