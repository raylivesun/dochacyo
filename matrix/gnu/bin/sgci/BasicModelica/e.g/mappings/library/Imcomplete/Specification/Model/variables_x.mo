/*
This model has one state variable x, no variables with fixed = true attributes and no initial equation, so there is one
missing initial condition. One tool could choose to add the fixed = true attribute to the state variable x, fixing it
to the default value of zero of its start attribute. Or, it could decide to give more priority to variables that have an
explicitly modified start attribute, hence fix the initial value of y to 1, or the initial value of z to 2. Three completely
different simulations would ensue.
The Modelica Language Specification, Section 8.6 does not prescribe or recommend any specific choice criterion
in this case. Hence, different tools, or even different versions of the same tool, could add different initial conditions,
leading to completely different simulations. In order to avoid any ambiguity and achieve good portability, it is thus
recommended to make sure that the initial conditions of all simulation model are well-specified.
A model with not enough initial conditions causes the OMC to issue the following translation warning: "The initial
conditions are not fully specified". By activating the Tools | Options | Simulation | Show additional information
from the initialization process option, or the -d=initialization compiler flag, one can get an explicit list of the
additional equations that OpenModelica automatically adds to get a fully specified initialization problem, which
may be helpful to figure out which initial conditions are missing. In this case, we recommend to amend the source
code of the model by adding suitable extra initial conditions, until that warning message no longer appears.
*/

model TestModel
  extends Modelica.Blocks.Interfaces.IInitializable;
  Real x = 0.0;
end TestModel;

