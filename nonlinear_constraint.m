function (C Ceg) nonlinear_constraint(Input)
  x = Input (1);
  y = Input (2);
  C = x^2 + y^2 - 2; %inequality constraint
Ceq = [];  %No equality constraint