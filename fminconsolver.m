function [x, fval, exitflag, output, lambda, grad, hessian] = fminconsolver (x0,lb,ub)
options = optimoptions('fmincon');
options = optimoptions(options,'Display','off');
options = optimoptions(options,'PlotFcn',{ @optimplotfval @optimplotconstrviolation });
[x, fval, exitflag, output, lambda, grad, hessian] = ...
fmincon (@objective_function,x0,[],[], [], [],lb,ub,@nonlinear_constraint,options);