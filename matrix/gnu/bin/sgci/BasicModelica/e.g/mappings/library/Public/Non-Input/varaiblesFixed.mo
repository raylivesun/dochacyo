// and should be fixed by putting the variable z in the protected section:
function f
     input Real x;
     output Real y;
protected
   Real z;
algorithm
   z := 2;
   y := x+z;
end f;