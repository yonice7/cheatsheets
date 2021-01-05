echo                 # print
for                  # for loop
in                   # in
{i..l..s}            # range(i,l,s)
$                    # print a variable
;                    # command separator
do                   # do certain action
$x                   # print a variable
;done                # finish script
~                    # home directory, i.e cd ~
?                    # wildcard single character
*                    # sequence wildcard
[]                   # character set wildcard
[1#5]                # range in the character wildcard
echo ${Var:4:4}      # string indentation range
echo ${var:6}        # string indentation from, we start from 0
printf "%.3f\n"      # Print a floating point and round it nf, it goes before what you want to print
$(echo $i | bc -l)   # We pass an operations string such as "(3 + 5) * 5 / 4" and operations will be performed
| bc -l              # If bc is invoked with the -l option, a math library is preloaded 
read name            # creates a variable
echo "Welcome $name" # prints a message + variable
mv old_name new_name # renaming a file
((...))              # means perfrom arithmetic and return the result of the calculation
((...))              # we can also use them to perform, booleans statements
[[...]]              # They are keywords, they allow us to use special parsing rules. Such as ||, (), &&, <, >, ==, !=
$c == [Yy]           # It is like 'in "Yy"' in Python
\*                   # If we want to use * as multiplyer, there has to be a \ before it.
{}                   # List are in braces and separated by commans , with no spaces i.e {+,-,\*,/}
&&                   # "and" statement
arr=($(cat))         # reads in an array [1,2,3,4]
arr=${arr[*]}        # render a new variable of type string from the merging of the array arr delimited by space, i.e., from [1,3,5,6] to "1 3 5 6"
arr=${arr// /+}      # changing to [1+2+3+4+5+6]
arr=$((READY_TO_SUM)) # summation result
arr[@]:3:5           # Indexing, :index position:number of values forward
arr[@]/*[Aa]*/       # Regular expression to ommit words having a or 
arr[@]/[[:upper:]]/. # Replace space for a dot
${arr[3]}            # Index printing
${#arr[@]}           # Print the count of values "#"

# cut
echo '0000 192.168.1.100 192.168.100.1' |cut -d ' ' -f 2 |cut -d '.' -f 4|cut -c 1
-d  # flag set the delimiter, space in this case
-f  # flag shows column to return, 2. The column starts at 1
-c  # it is used to extract the first character from the results of the second command
cut # it works on every line so it's not necessary to perform a loop, -d 'Tab' is the default delimiter

# head
head -n num         # Get the first n lines
tail num            # Get the last n lines
head -c num         # Get the first n characters
head -22 | tail +12 # Get a range of lines

# tr
tr "()" "[]" # Replace one with other
tr -d a-z    # Delete the range a character input
tr -s        # Replace spaces

# sort
-r                        # Reverse the order
-n                        # Sort by number
-t                        # Set the field separator
-knum,num                 # Sort by column starting from num and ending in num
-t $'\t' + more arguments # Sort every row
-nrk2                     # Sort a row by number, descending and from column 2

# uniq
-c # Counts repeated words

# paste
paste -s     # From words divided by tabs in a column to words divided by spaces in a row
paste - - -  # Divide the words in 3 columns
paste -d, -s # Sets a comma as delimiter

# Statementes
if condition; then echo output; elif condition; then echo output; else echo output; fi

# Shortcuts
Ctrl + D         # Save and exit after cat command
Alt + D
Ctrl + A or Home # Go to the beginning of the line
Ctrl + E or End  # Go to the end of the line
Ctrl + K         # Delete from the cursor to the end of the line
Ctrl + U         # Delete from the cursor to the beginning of the line
Ctrl + L         # Clear shortcut

# General
df -h                   # see usb devices
lsblk                   # see usb devices
ls -l                   # show a list
ls -a                   # show files including hidden ones
ls -lstr                # list
ls -lstri               # show with inode (number)
find . -name "filename" # find a file or directory, specific name, returns pwd
find / -name "filename" # find from root directory
locate filaname         # works so much better than find
				                # locate uses a prebuilt database, locate is faster, 
updatedb                # but to have it updated we should run the command "updatedb" 
				                # find iterates over a filesystem to locate files
passwd userid           # change password
passwd                  # change general password
                        # wildcards 
                        # * - represent zero or more characters
                        # ? - represents a single character
                        # [] - represents a range of characters
cd /                    # Change directory to root
                        # _ - represents a single character
                        # ^[] - not like
                        #  [^] - the beginning
ls -l abc*              # list every file that starts with abc...
man [command]           # see a manual of the command
ln -s /path/to/file     # create a soft link
ln /path/to/file        # create a hard link
echo "text" > file      # create a text within selected file
echo "more t" >> file   # add a second line to a file
chmod                   # change dir or file permissions
chmod g-w [filename]    # group can't write the file
chmod a-r [filename]    # noone can read the file
chmod u-w [filename]    # user can't write the file
chmod u+rw [filename]   # add permission for user read & write
chmod g+rw [filename]   # add permission for group read & write
chmod o+r [filename]    # add permission for others read
chmod a-x [dir]/        # nobody can enter the dir
chmod 000 [file]        # 0 user 0 group 0 other, chmod calculator online
chown                   # change file ownership
chgrp                   # change group ownership
chown [user] [file]     # now the file is own by [user]
chgro [group] [file]    # now the file is own by [group]
whatis [command]        # help command
[command] --help        # help command 2
man [command]           # help command 3

# cat
cat file1 file2         # read the content of two files
cat > file1             # create a new file
cat >> file1            # appending text to a file
cat file1 > file2       # output content into a new file
cat -n file1 file2      # numbering the output lines
