clc
clear all
close all
%------------------------------------------------------------------
%customization: lower bound lb = (1xn), and upper bound lb = [1xn]
lb = [-1.5 -1.5];
ub = [1.5 1.5];
%------------------------------------------------------------------
n=5; %number of starts
[x y]=size(lb);
S=zeros (n,y);
R=zeros (n,1);
% multi-start optimization solver

for j=1:n
    for i = 1:y
         x0(i)=lb(i) + (ub(i)-lb(i))*rand; % generate initial solution
    end
    [x, fval, exitflag, output, lambda, grad, hessian] = fminconsolver(x0,lb,ub);
    s(j,:)=x;
    R(j,1)=fval;
end
[xl y1]=find(R == min(R));
objective_function_value = R(min(x1),1)
optimal_solution = S(min(x1),:)