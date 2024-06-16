/*
9.8 Incomplete specification of initial conditions
The simulation of Modelica models of dynamical systems requires the tool 
to determine a consistent initial solution for the simulation to start. To 
do so, the system equations are augmented by adding one initial condition 
for each continuous state variable (after index reduction) and one initial 
condition for each discrete state variable. Then, the augmented system is 
solved upon initialization. These initial conditions can be formulated by 
adding a start = <expression> and a fixed = true attribute to those variables, 
e.g.
*/
model MP "Description"

parameter Real x_start = 10;
parameter Real v_start = 2.5;
Real x(start = x_start, fixed = true);
discrete Real v(start = v_start, fixed = true);
Integer i(start = 2, fixed = true);

end MP;

model PTM "Description"

parameter Real x_start = 10;
parameter Real v_start = 2.5;
Real x;
discrete Real v;
Integer i;
Real y(start = 3.5);
initial equation
x = x_start;
v = v_start;
i = 2;
der(y) = 0;
end PTM;