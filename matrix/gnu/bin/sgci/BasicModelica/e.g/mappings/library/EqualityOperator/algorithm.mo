/*
This code block defines an if-else statement within the context of the Modelica 
model "M1". The if-else statement compares the value of the protected function 
"f" with the real variable "M". If the values are equal, it prints a message 
using the printf function. If the values are not equal, it also prints a message 
using the printf function.

The code does not return any additional code beyond the immediate scope of the 
code block.
*/
function f
    "Documentation"
    input Real x, y, z;
    input Real x = 1;
    input Real y = 2;
    input Real z = 3;
    Real M;
    Real f;
    Real x1, y1, z1;
    Real x2, y2, z2;
    Real x3, y3, z3;
    Real x4, y4, z4;
    Real x5, y5, z5;
    Real x6, y6, z6;
    Real x7, y7, z7;
    Real x8, y8, z8;
    Real x9, y9, z9;
algorithm
   z := (real * z + 0.5) / (real * z + 0.5);
   y := (real * y + 0.5) / (real * y + 0.5);
   x := (real * x + 0.5) / (real * x + 0.5);
   f := x + y + z;
   M := 10;
   if (f <= M) then
      printf("f <= M");
   else
   printf("f > M");
   end if;
end f;

// calculate
function fprintf
   input Real x;
   input Real y = 0;
   output Real z;
algorithm
   z := x + y;
end fprintf;


// so, the OpenModelica parser does not accept it. 
// The correct code is:
function fprintln
    input Real x;
    input Real y = 0;
    output Real z;
algorithm
    z := x + y;
end fprintln;

// Some tools automatically and silently apply the correction to the code, 
// please save it in its correct form to make it
// usable with OpenModelica.
// Also note that binding equations with '=' sign are instead required for 
// default values of function inputs.

function fprintlp
    input Real x;
    input Real y = 0;
    output Real z;
algorithm
    z := x + y;
end fprintlp;

