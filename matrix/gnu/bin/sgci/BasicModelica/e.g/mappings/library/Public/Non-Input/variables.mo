/*
9.6 Public non-input non-output variables in functions
According to Section 12.2 of the language specification, only input and output 
formal parameters are allowed in the function's public variable section. Hence, 
the following function declaration is not valid:
*/

function ftp 
   input Real x1, x2, x3;
   output Real y1, y2, y3;
   Real z1, z2, z3;
algorithm
  z1 := x1 + x2 + x3;
  z2 := x1 * x2 + x1 * x3 + x2 * x3;
  z3 := x1 * x2 + x1 * x3 + x2 * x3;
  y1 := z1 / z2;
  y2 := z2 / z3;
  y3 := z3 / z1;
  return;
end ftp;  
  