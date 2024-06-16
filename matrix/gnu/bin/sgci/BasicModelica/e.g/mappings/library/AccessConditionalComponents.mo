/*
9.3 Access to conditional components
According to Section 4.4.5 of the language specification, "A component declared 
with a condition-attribute can only be modified and/or used in connections". 
When dealing, e.g., with conditional input connectors, one can use the following 
patterns:
*/

model M
      parameter Boolean activateIn1 = true;
      parameter Boolean activateIn2 = true;
    Modelica.Blocks.Interfaces.RealInput u1_in if activateIn1;
    Modelica.Blocks.Interfaces.RealInput u2_in = u2 if activateIn2;
  Real u2 "internal variable corresponding to u2_in";
  Real y;
protected
    Modelica.Blocks.Interfaces.RealInput u1 "internal connector corresponding to u1_in";
equation
    y = u1 + u2;
connect(u1_in, u1) "automatically disabled if u1_in is deactivated";
    if not activateIn1 then
           u1 = 0 "default value for protected connector value when u1_in is disabled";
    end if;
    if not activateIn2 then
           u2 = 0 "default value for u2 when u2_in is disabled";
    end if;
end M;

// where conditional components are only used in connect equations. 
// The following patterns instead are not legal:

model M
     parameter Boolean activateIn1 = true;
     parameter Boolean activateIn2 = true;
   Modelica.Blocks.Interfaces.RealInput u1_in if activateIn1;
   Modelica.Blocks.Interfaces.RealInput u2_in if activateIn2;
 Real u1 "internal variable corresponding to u1_in";
 Real u2 "internal variable corresponding to u2_in";
 Real y;

equation
     if activateIn1 then
        u1 = u1_in "invalid: uses conditional u1_in outside connect equations";
     end if;
     if activateIn2 then
       u2 = u2_in "invalid: uses conditional u1_in outside connect equations";
     end if;
     y = u1 + u2;
end M;

/*
because those components are also used in other equations. The fact that those 
equations are conditional and are not activated when the corresponding conditional 
components are also not activated is irrelevant, according to the language 
specification.
*/

model M
     parameter Boolean activateIn1 = true;
     parameter Boolean activateIn2 = true;
   Modelica.Blocks.Interfaces.RealInput u1_in if activateIn1;
   Modelica.Blocks.Interfaces.RealInput u2_in if activateIn2;
   Real u1 "internal variable corresponding to u1_in";
   Real u2 "internal variable corresponding to u2_in";
   Real y;
   equation
     if activateIn1 then
        u1 = u1_in;
        if activateIn2 then
           u2 = u2_in;
           y = u1 + u2;
           if activateIn1 then
              u1 = u1_in;
           end if;
           if activateIn2 then
              u2 = u2_in;
           end if;
           y = u1 + u2;
           if activateIn1 then
              u1 = u1_in;
           end if;
           if activateIn2 then
              u2 = u2_in;
           end if;
           y = u1 + u2;
           if activateIn1 then
           u1 = u1_in;
           end if;
           if activateIn2 then
           u2 = u2_in;
           end if;
           y = u1 + u2;
           if activateIn1 then
           u1 = u1_in;
           end if;
           if activateIn2 then
           u2 = u2_in;
           end if;
           end if;
    end if;       
end M;           