/*
to write a generic model, which is then specialized by redeclaring the package 
to a non-partial one, as in M2. However, M1 cannot be compiled for simulation, 
since, according to Section 5.3.2 of the language specification, the classes that 
are looked inside during lookup shall not be partial in a simulation model. This 
problem can be fixed by accessing that class (the function f, in this case) from 
a non-final package that extends the partial one, either by redeclaring the partial 
package to a non-partial one, as in M2, or by locally defining a non-partial package 
that extends from the partial one, as in M3. The latter option is of course viable 
only if the class being accessed is in itself not a partial or somehow incomplete 
one. This issue is often encountered in models using Modelica.Media, that sometimes 
use some class definitions (e.g. unit types) from partial packages such as 
Modelica.Media.Interfaces.PartialMedium. The fix in most cases is just to use the 
same definition from the actual replaceable Medium package defined in the model, 
which will eventually be redeclared to a non-partial one in the simulation model.
*/

model M1 "Description"
  // "Description" is the description of the model that will be used to replace
  Real M = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  // "M" is the name of the model variable that will be used to replace
protected
  Real f(x = 1, y = 2, z = 3); 
  // "f" is the name of the function that will be used to replace
equation
  f = M;
  // "f" is the name of the equation that will be used to replace
  if (f == M) then
      printf(" %s\n",   f);
  else 
      printf(" %s\n",   f);
  end if;      
end M1;
