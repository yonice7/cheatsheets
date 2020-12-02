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
printf "%.3f\n" # Print a floating point and round it nf, it goes before what you want to print
$(echo $i | bc -l) # We pass an operations string such as "(3 + 5) * 5 / 4" and operations will be performed
| bc -l # If bc is invoked with the -l option, a math library is preloaded 
read name # creates a variable
echo "Welcome $name" # prints a message + variable
mv old_name new_name # renaming a file
((...)) # means perfrom arithmetic and return the result of the calculation
((...)) # we can also use them to perform, booleans statements
[[...]] # They are keywords, they allow us to use special parsing rules. Such as ||, (), &&, <, >, ==, !=
$c == [Yy] # It is like 'in "Yy"' in Python
\* # If we want to use * as multiplyer, there has to be a \ before it.
{} # List are in braces and separated by commans , with no spaces i.e {+,-,\*,/}
&& # "and" statement
arr=($(cat)) # reads in an array [1,2,3,4]
arr=${arr[*]} # render a new variable of type string from the merging of the array arr delimited by space, i.e., from [1,3,5,6] to "1 3 5 6"
arr=${arr// /+} # changing to [1+2+3+4+5+6]
arr=$((READY_TO_SUM)) # summation result
arr[@]:3:5 # Indexing, :index position:number of values forward

# cut
echo '0000 192.168.1.100 192.168.100.1' |cut -d ' ' -f 2 |cut -d '.' -f 4|cut -c 1
-d # flag set the delimiter, space in this case
-f # flag shows column to return, 2. The column starts at 1
-c # it is used to extract the first character from the results of the second command
cut # it works on every line so it's not necessary to perform a loop, -d 'Tab' is the default delimiter

# head
head -n num # Get the first n lines
tail num # Get the last n lines
head -c num # Get the first n characters
head -22 | tail +12 # Get a range of lines

# tr
tr "()" "[]" # Replace one with other
tr -d a-z # Delete the range a character input
tr -s # Replace spaces

# sort
-r # Reverse the order
-n # Sort by number
-t # Set the field separator
-knum,num # Sort by column starting from num and ending in num
-t $'\t' + more arguments # Sort every row
-nrk2 # Sort a row by number, descending and from column 2

# uniq
-c # Counts repeated words

# paste
paste -s # From words divided by tabs in a column to words divided by spaces in a row
paste - - - # Divide the words in 3 columns
paste -d, -s # Sets a comma as delimiter

# Statementes
if condition; then echo output; elif condition; then echo output; else echo output; fi

Ctrl + D
Alt + D
Ctrl + A or Home # Go to the beginning of the line
Ctrl + E or End # Go to the end of the line
Ctrl + K # Delete from the cursor to the end of the line
Ctrl + U # Delete from the cursor to the beginning of the line
