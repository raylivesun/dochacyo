/*
Note that in the latter case, the start attribute on y is not used directly to set the initial value of that variable,
but only potentially used as initial guess for the solution of the initialization problem, that may require using an
iterative nonlinear solver. Also note that sets of initial equations are often added to the models taken from reusable
component libraries by selecting certain component parameters, such as initOpt or similar.
If the number of initial conditions matches the number of continuous and discrete states, then the initialization
problem is well-defined. Although this is per se not a guarantee that all tools will be able to solve it and find the
same solution, this is for sure a prerequisite for across-tool portability.
Conversely, if the number of initial conditions is less than the number of states, the tool has to add some initial
equations, using some heuristics to change the fixed attribute of some variables from false to true. Consider for
example the following model:
*/
model MP1
      Real x;
      Real y(start = 1);
      Real z(start = 2);
equation
  der(x) = y + z;
y = 2*x;
z = 10*x + 1;
end MP1;