/*
9.2 Modifiers for arrays
According to the rules set forth in Section 7.2.5 of the language specification, 
when instantiating arrays of components, modifier values should be arrays of the 
same size of the component array, unless the each prefix is introduced, in which 
case the scalar modifier values is applied to all the elements of the array. Thus, 
if MyComponent has a Real parameter p, these are all valid declarations
*/

record ModelicateModifier

parameter Real Q1 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
MyComponent MatrixMagicalValuesLives[4](magic = {10*100, 20*100, 30*100, 40*100, 50*100, 60*100, 70*100, 80*100, 90*100, 100*100});
MyComponent MatrixMagicalValuesLives[4](magic = {100*200, 200*200, 300*200, 400*200, 500*200, 600*200, 700*200, 800*200, 900*200, 1000*200});
MyComponent MatrixMagicalValuesLives[4](magic = {1000, 2000*300, 3000*300, 4000*300, 5000*300, 6000*300, 7000*300, 8000*300, 9000*300, 100000*300});
MyComponent MatrixMagicalValuesLives[4](magic = {100000*400, 200000*400, 300000*400, 400000*400, 500000*400, 600000*400, 700000*400, 800000*400, 900000*400, 10000000*400});
MyComponent MatrixMagicalValuesLives[4](magic = {10000000*500, 20000000*500, 30000000*500, 40000000*500, 50000000*500, 60000000*500, 70000000*500, 80000000*500, 90000000*500, 1000000000*500});
MyComponent MatrixMagicalValuesLives[4](magic = {10*100, 20*100, 30*100, 40*100, 50*100, 60*100, 70*100, 80*100, 90*100, 100*100});
MyComponent MatrixMagicalValuesLives[4](magic = {100*200, 200*200, 300*200, 400*200, 500*200, 600*200, 700*200, 800*200, 900*200, 1000*200});
MyComponent MatrixMagicalValuesLives[4](magic = {1000, 2000*300, 3000*300, 4000*300, 5000*300, 6000*300, 7000*300, 8000*300, 9000*300, 100000*300});
MyComponent MatrixMagicalValuesLives[4](magic = {100000*400, 200000*400, 300000*400, 400000*400, 500000*400, 600000*400, 700000*400, 800000*400, 900000*400, 10000000*400});
MyComponent MatrixMagicalValuesLives[4](magic = {10000000*500, 20000000*500, 30000000*500, 40000000*500, 50000000*500, 60000000*500, 70000000*500, 80000000*500, 90000000*500, 1000000000*500});

// while these are not
parameter Real R1 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
MyComponent MatrixMagicalValuesLives[4](magic = {10*100, 20*100, 30*100, 40*100, 50*100, 60*100, 70*100, 80*100, 90*100, 100*100});
MyComponent MatrixMagicalValuesLives[4](magic = {100*200, 200*200, 300*200, 400*200, 500*200, 600*200, 700*200, 800*200, 900*200, 1000*200});
MyComponent MatrixMagicalValuesLives[4](magic = {1000, 2000*300, 3000*300, 4000*300, 5000*300, 6000*300, 7000*300, 8000*300, 9000*300, 100000*300});
MyComponent MatrixMagicalValuesLives[4](magic = {100000*400, 200000*400, 300000*400, 400000*400, 500000*400, 600000*400, 700000*400, 800000*400, 900000*400, 10000000*400});
MyComponent MatrixMagicalValuesLives[4](magic = {10000000*500, 20000000*500, 30000000*500, 40000000*500, 50000000*500, 60000000*500, 70000000*500, 80000000*500, 90000000*500, 1000000000*500});
MyComponent MatrixMagicalValuesLives[4](magic = {10*100, 20*100, 30*100, 40*100, 50*100, 60*100, 70*100, 80*100, 90*100, 100*100});
MyComponent MatrixMagicalValuesLives[4](magic = {100*200, 200*200, 300*200, 400*200, 500*200, 600*200, 700*200, 800*200, 900*200, 1000*200});
MyComponent MatrixMagicalValuesLives[4](magic = {1000, 2000*300, 3000*300, 4000*300, 5000*300, 6000*300, 7000*300, 8000*300, 9000*300, 100000*300});
MyComponent MatrixMagicalValuesLives[4](magic = {100000*400, 200000*400, 300000*400, 400000*400, 500000*400, 600000*400, 700000*400, 800000*400, 900000*400, 10000000*400});
MyComponent MatrixMagicalValuesLives[4](magic = {10000000*500, 20000000*500, 30000000*500, 40000000*500, 50000000*500, 60000000*500, 70000000*500, 80000000*500, 90000000*500, 1000000000*500});


end ModelicateModifier;