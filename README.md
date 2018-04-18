# docQ
A proof of concept around the commenting the q code with some predifined tags which would generate html/wiki style documents.

## Tags

Here are some tags that can be used in the code as comments and it will be automatically parsed and included in the documents.

### @package
Logical group name 

### @desc
Explanation of the function , package, paramaters etc. it will be used as paragraph when the documents are generated.

### @function
Name of the function 

@alias

@param

@returns

@error

@code

@refer

### @tag
It can be used to define the keywords that can be found by browsing.  

### @table
To create a table in the generated documents

### @header
Table header; the columns can be defined using pipe (e.g. Col1|Col2|Col3) 

### @row 
Table row; cells are "|" (pipe) separated.


