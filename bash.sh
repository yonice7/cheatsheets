echo # print
for # for loop
in # in
{i..l..s} # range(i,l,s)
$ # print a variable
; # command separator
do # do certain action
$x # print a variable
;done # finish script
~ # home directory, i.e cd ~
? # wildcard single character
* # sequence wildcard
[] # character set wildcard
[1#5] # range in the character wildcard
echo ${Var:4:4} # string indentation range
echo ${var:6} # string indentation from, we start from 0
read name # creates a variable
echo "Welcome $name" # prints a message + variable
mv old_name new_name # renaming a file

Ctrl + D
Alt + D
Ctrl + A or Home # Go to the beginning of the line
Ctrl + E or End # Go to the end of the line
Ctrl + K # Delete from the cursor to the end of the line
Ctrl + U # Delete from the cursor to the beginning of the line
