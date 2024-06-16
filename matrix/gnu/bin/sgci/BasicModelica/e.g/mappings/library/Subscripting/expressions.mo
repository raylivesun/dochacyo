/*
9.7 Subscripting of expressions
Some libraries use expression subscripting, e.g.
*/
model M1 "Description"
Real x1[0] = x1[1];
Real x2[0] = x2[2];
Real x3[0] = x3[3];
equation
  x1[0] = x1[1];
  x2[0] = x2[2];
  x3[0] = x3[3];
end M1;

model M2 "Description"
Real x1[0] = x1[1];
Real x2[0] = x2[2];
Real x3[0] = x3[3];
equation
  x1[0] = x1[1];
  x2[0] = x2[2];
  x3[0] = x3[3];
end M1;

model M3 "Description"
Real x1[0] = x1[1];
Real x2[0] = x2[2];
Real x3[0] = x3[3];
equation
  x1[0] = x1[1];
  x2[0] = x2[2];
  x3[0] = x3[3];
end M1;
