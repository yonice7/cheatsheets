## Themes
- darkcloud-vimconfig
- miramare
- maple_leaf Comfortable & Pleasant Color Scheme for VIM
- vim-gruvbox8
- seoul256.vim
- deciduous_tree Low-contrast Vim color scheme based on Seoul Colors

## Plugin
```vim
command-line fuzzy funder " Colorear correctamente codigo vim
coc " conquer of completion
vim-airline
```
## Commands
hjkl
```vim
d " del
i " write
a " append
```
### Deleting
```vim
d " Always expect the next letter
dw " delete word
de " Delete to the end of the current word
d$ " Delete everything forward until that point
db " Delete everything behind
dd " Delete a whole line
2dd " Delete 2 lines
df{char} " Delete until character
. " Repeat last process
u " undo
U " Line original state
```
### Copying and pasting
```vim
yy " yank
p " paste
Ctrl-r + " pasting in the command line
"+y " Copy to the clipboard
```
### Moving
```vim
w " Start of the word
e " end of the word
b " Backward to the start of the word
0 " start of the line
$ " Jump to the end of the line
gg " first line of the document
G " Last line of the document
2w " Two words forward
CTRL + r " Redo
r+letter " replace and writes the letter you want
o " append a new line below
O " append a new line above
Ctrl+t " indent
Ctrl+d " de-indent
Ctrl+o " go back with cursor
/word " look for word, then n to go to the next, N back
n " Find the next one
?word " last word that matches
% parenthesis match
Ctrl+G " Location
G " last line
gg first line
numG go to that line number
```
### Saving
```vim
:w Filename saves as
Shift + ZZ " Saving and Exit
Shift + ZQ " Exit without saving
```
### Easymotion
space + s + two characters 

### Nerdtree directory
```vim
space+nt " open
s " open a new file in a new window 
t " open a file in a t tab
gt " move between tabs
```
### Navigate between tabs tmux
Ctrl + hjkl

### Substituing
```vim
to avoid replacing words we don't want to be replaced
s: vi : VIM : g 
r + {char} " replace one character with another
~ # Replace a lower case character with the same character uppercased 
CTRL-a "Increment a number
```

#### better way
```vim
s:\<vi\>:VIM:g
^ Beginning of the line
$ End of the line
s:^vi\>:VIM:
:%s/foo/bar/g
:%s/foo/(&)/g
& replace with the same word and parenthesis
:%s/foo.*/&/g until the end of the line
:%s/^$/\<br\/\>/g " replace empty line with brake
:%s/\%>9l\%<21word " replace from line number 9 to line number 21
Ctrl + A increment a number
```
### Moving within the document 
```vim
6k
g CTRL-g " Count document words

### Terminal
```vim 
:vert ter
Ctrl-W switch from the terminal to the next window
```

### Vim-Fugitive
```vim
:Git add {args}
:Gcommit {args}
:Gpush
:Gstatus
```
