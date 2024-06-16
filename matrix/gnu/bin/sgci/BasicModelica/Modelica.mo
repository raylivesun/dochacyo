/*
8.1 BaseModelica
BaseModelica is an intermediate format to describe hybrid (continuous and discrete) systems with emphasis on
defining the dynamic behavior of systems, rather than their structure. It is meant to become part of the Modelica
standard, as a subset of the Modelica language that does not include object-oriented features such as lookup, in-
stantiation, inheritance, connections, but rather gives a flat representation of a Modelica model which only contains
variable declarations, function declarations, record declarations, equations, and initial equations.
The main aim of BaseModelica is to provide a much lower barrier of entry to the Modelica world, since writing a
BaseModelica compiler or interpreter will be a much easier task than writing a full-fledged Modelica compiler.
BaseModelica is currently described by the MCP 0031 draft , and will eventually be incorporated in a future version
of the Modelica Language Specification.
*/

model BaseModelica "Description"

import Base.Modelica.business.modelica.books;
import Base.Modelica.business.modelica.components;
import Base.Modelica.business.modelica.interfaces;
import Base.Modelica.business.modelica.types;
import Base.Modelica.business.modelica.units;
import Base.Modelica.business.modelica.units.derived;
import Base.Modelica.business.modelica.units.interfaces;
import Base.Modelica.business.modelica.units.types;
import Base.Modelica.business.modelica.units.units;
import Base.Modelica.business.modelica.units.units.derived;
import Base.Modelica.business.modelica.units.units.interfaces;
import Base.Modelica.business.modelica.units.units.types;
import Base.Modelica.business.modelica.units.units.units;
import Base.Modelica.business.modelica.units.units.units.derived;
import Base.Modelica.business.modelica.units.units.units.interfaces;
import Base.Modelica.business.modelica.units.units.units.types;



   // The name of the modelica language specification that describes
   // this model.
   String language = "Modelica";

   // The name of the model.
   String name = "BaseModelica";

   // The version of the model.
   String version = "1.0";

   // The description of the model.
   String description = "BaseModelica is an intermediate format to describe hybrid (continuous and discrete) systems with emphasis on defining the dynamic behavior of systems, rather than their structure. It is meant to become part of the Modelica standard, as a subset of the Modelica language that does not include
   object-oriented features such as lookup, instantiation, inheritance, connections, but rather gives a flat representation
   of a Modelica model which only contains variable declarations, function declarations, record declarations, equations, and
   initial equations. The main aim of BaseModelica is to provide a much lower barrier of entry to
   the Modelica world, since writing a BaseModelica compiler or interpreter will be a much easier task
   than writing a full-fledged Modelica compiler. BaseModelica is currently described by the
   MCP 0031 draft, and will eventually be incorporated in a future version of
   the Modelica Language Specification.";

   // The author of the model.
   String author = "<NAME>";
   // The contact information of the author.
   String contact = "<EMAIL>";
   // The copyright information of the author.
   String copyright = "Copyright (c) 2014-2015, <NAME>";

   // The license under which the model is distributed.
   String license = "BSD-3-Clause";

   // The license under which the model is distributed.
   String licenseURL = "https://opensource.org/licenses/BSD-3-Clause";

   // The license under which the model is distributed.
   String licenseTextURL = "https://opensource.org/licenses/BSD-3-Clause";
   // The license under which the model is distributed.
   String licenseURLText = "https://opensource.org/licenses/BSD-3-Clause";

   // The license under which the model is distributed.
   String licenseTextURLText = "https://opensource.org/licenses/BSD-3-Clause";
   // The license under which the model is distributed.
   String licenseURLTextText = "https://opensource.org/licenses/BSD-3-Clause";

   package books "Description"
    
     // The name of the package.
     String name = "books";
     // The version of the package.
     String version = "1.0";
     // The description of the package.
     String description = "This package contains the books.";
     // The author of the package.
     String author = "<NAME>";
     // The contact information of the author.
     String contact = "<EMAIL>";
     // The copyright information of the author.
     String copyright = "Copyright (c) 2014-2015, <NAME>";
     // The license under which the package is distributed.
     String license = "BSD-3-Clause";
     // The license under which the package is distributed.
     String licenseText = "Redistribution and use in source and binary forms, with 
     or without modification, are permitted provided that the following conditions 
     are met:1. Redistributions of source code must retain the above copyright notice, 
     this list of conditions and the following disclaimer. Redistributions in binary 
     form must reproduce the above copyright notice, this list of conditions and
     the following disclaimer in the documentation and/or other materials provided 
     with the distribution. Neither the name of the copyright holder nor the names 
     of its contributors may be use to endorse or promote products derived from 
     this software without specific prior written permission. THIS SOFTWARE IS 
     PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS 
     OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
     OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO 
     EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
     INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
     BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
     DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY 
     OF LIABILITY, WHETHEN IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
     NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, 
     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.";
     // The license under which the package is distributed.
     String licenseURL = "https://opensource.org/licenses/BSD-3-Clause";
     // The license under which the package is distributed.
     String licenseTextURL = "https://opensource.org/licenses/BSD-3-Clause";
     // The license under which the package is distributed.
     String licenseURLText = "https://opensource.org/licenses/BSD-3-Clause";
     // The license under which the package is distributed.
     String licenseTextURLText = "https://opensource.org/licenses/BSD-3-Clause";


   end books;
   
end BaseModelica;