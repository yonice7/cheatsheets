## Themes
- darkcloud-vimconfig
- miramare
- maple_leaf Comfortable & Pleasant Color Scheme for VIM
- vim-gruvbox8
- seoul256.vim
- deciduous_tree Low-contrast Vim color scheme based on Seoul Colors


## Plugin
```python
command-line fuzzy funder # Colorear correctamente codigo python
coc # conquer of completion
vim-airline
```
## hjkl
```python
d # del
i # write
a # append
```
## Deleting
```python
d # Always expect the next letter
dw # delete word
de # Delete to the end of the current word
d$ # Delete everything forward until that point
db # Delete everything behind
dd # Delete a whole line
2dd # Delete 2 lines
u # undo
U # Line original state
```
## Copying and pasting
```python
yy # yank
p # paste
Ctrl-r + # pasting in the command line
"+y # Copy to the clipboard
```
## Moving
```python
w # Start of the word
e # end of the word
b # Backward to the start of the word
0 # start of the line
$ # Jump to the end of the line
gg # first line of the document
G # Last line of the document
2w # Two words forward
CTRL + r # Redo
r+letter # replace and writes the letter you want
o # append a new line below
O # append a new line above
Ctrl+t # indent
Ctrl+d # de-indent
Ctrl+o # go back with cursor
/word # look for word, then n to go to the next, N back
?word # last word that matches
% parenthesis match
Ctrl+G # Location
G last
gg first line
numG go to that line number
```
## Saving
```python
:w Filename saves as
Shift + ZZ # Saving and Exit
Shift + ZQ # Exit without saving
```
## Easymotion
space + s + dos characters 

## Nerdtree directory
space+nt #open
open a new file in a new tab
s
" pointer over file a press:
s

## Navigate between tabs tmux
Ctrl + hjkl

## Substituing
to avoid replacing words we don't want to be replaced
s: vi : VIM : g 

### better way
```python
s:\<vi\>:VIM:g
^ Beginning of the line
$ End of the line
s:^vi\>:VIM:
:%s/foo/bar/g
:%s/foo/(&)/g
& replace with the same word and parenthesis
:%s/foo.*/&/g until the end of the line
:%s/^$/\<br\/\>/g # replace empty line with brake
Ctrl + A increment a number
```
##  Moverse por numeros, seis espacios hacia arriba
6k
