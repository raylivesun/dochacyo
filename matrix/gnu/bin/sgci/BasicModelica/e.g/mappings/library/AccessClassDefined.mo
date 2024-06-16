/*
9.4 Access to classes defined in partial packages
 Consider the following example package
*/
package TestPartialPackage
       partial package PartialPackage
function f
       input Real x;
       output Real y;
algorithm
    y := 2*x;
end f;

end PartialPackage;

package RegularPackage
        extends PartialPackage;
model A
      Real x = time;
end A;

end RegularPackage;
model M1
package P = PartialPackage;
        Real x = P.f(time);
end M1;
model M2
      extends M1(redeclare package P = RegularPackage);
end M2;
model M3
      encapsulated package LocalPackage
import TestPartialPackage.PartialPackage;
      extends PartialPackage;
end LocalPackage;
package P = LocalPackage;
    Real x = P.f(time);
end M3;
end TestPartialPackage;