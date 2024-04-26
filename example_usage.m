clc;clear
syms x1 x2 x3 

% writing problem function, d and x initial
% f = @(x1,x2,x3) (x1 + 3*x2 + x3)^2 + 12*(x1-x2);
% d = [1 ; 3 ; 1];
% x_init = [-1 ; -1 ; -1];

f = @(x1,x2) 0.1*x1^2 + x2^2 -10;
d = [-1;-2];
x_init = [5 ; 1];

% find x_new that dependent on stepsize var(alpha) 
x_new = line_search(x_init, d);

% convert f(x) function to f(stepsize) function
f_stePsize = f_stepsize(f, x_new);

% find optimal step size with Golden Section Search Method
optStepSize = findOptStepSizeGoldenSearch(f, x_init, d);
