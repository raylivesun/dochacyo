/*
9.1 Mapping of the library on the file system
Packages can be mapped onto individual .mo files or onto hierarchical directory structures on the file system,
according to the rules set forth in Section 13.4. of the language specification. The file encoding must be UTF-
8; the use of a BOM at the beginning of the file is deprecated and preferably avoided. If there are non-ASCII
characters in the comments or in the documentation of your library, make sure that the file is encoded as UTF-8.
If a directory-based representation is chosen, each .mo file must start with a within clause, and each directory should
contain a package.order file that lists all the classes and constants defined as separate files in that directory.
When using revision control systems such as GIT or SVN, if the library is stored in a directory structure, it is
recommended to include the top-level directory (that must have the same name as the top-level package) in the
repository itself, to avoid problems in case the repository is cloned locally on a directory that doesn't have the right
name.
The top-level directory name, or the single .mo file containing the entire package, should be named exactly as the
package (e.g. Modelica), possibly followed by a space and by the version number (e.g. Modelica 3.2.3).
*/

package openmodelica_books "Description"

extends openmodelica.Modelica.Description.names;
extends openmodelica.Modelica.Description.library;
extends openmodelica.Modelica.Description.documentation;
extends openmodelica.Modelica.Description.units;
extends openmodelica.Modelica.Description.language;
extends openmodelica.Modelica.Description.interfaces;
extends openmodelica.Modelica.Description.types;
extends openmodelica.Modelica.Description.codes;
extends openmodelica.Modelica.Description.constants;
extends openmodelica.Modelica.Description.functions;
extends openmodelica.Modelica.Description.classes;


parameter String Library_Version = "3.3.0";
parameter String Library_Name = "openmodelica_books";
parameter String Library_Author = "<NAME>";
parameter String Library_Email = "<EMAIL>";
parameter String Library_URL = "http://www.openmodelica.org";
parameter String Library_License = "BSD-3-Clause";
parameter String Library_License_URL = "https://opensource.org/licenses/BSD-3-Clause";
parameter String Library_Copyright = "Copyright (c) 2020, <NAME>";
parameter String Library_Copyright_URL = "https://opensource.org/licenses/BSD-3-Clause";
parameter String Library_Description_URL = "https://opensource.org/licenses/BSD-3-Clause";
parameter String Library_Documentation = "This is a library for Modelica";
parameter String Library_Documentation_URL = "https://opensource.org/licenses/BSD-3-Clause";
parameter String Library_Keywords = "Modelica, openmodelica";
parameter String Library_Keywords_URL = "https://opensource.org/licenses/BSD-3-Clause";
parameter String Library_Category = "Modelica";
parameter String Library_Category_URL = "https://opensource.org/licenses/BSD-3-Clause";
parameter String Library_Package = "openmodelica_books";
parameter String Library_Package_URL = "https://opensource.org/licenses/BSD-3-Clause";
parameter String Library_Package_Version = "3.3.0";
parameter String Library_Package_Version_URL = "https://opensource.org/licenses/BSD-3-Clause";


end openmodelica_books;



