Alt + hjkl - rezise windows
Ctrl + hjkl - move around windows
L o - focus on one buffer
ctrl + t - tree view
L t - focus tree view
L tf - find current file in tree view
Ctrl + wv or ws - vertical/horizontal split

L gs - git status
L gf - merge from the left
L gf - merge from the right
L gj - jump to next git modification in current file
L gk - jump to previous git modification in current file

s - sneak to 2 letter anything (down)
S - sneak to 2 letter anything (up)
f - sneak to 1 letter (down) keep pressing f to go to next
F - sneak to 1 letter (up) keep pressing f to go to next
jk or kj - leave insert move
L; or ;; - add ; to end of line
Ctrl + Alt + move - move lines around
L p - switch projects (only dirs specified in plugin-configs/fzf-project.vim)
ctrl + o - search files in project
ctrl + f - search text in project
L b - open buffers
L m - open marks (mX to set, 'X to open them or via this list)
Ctrl + n - multiple cursor with same word, can use in visual if only want multiple lines

L c - change word
cc - change entire line
C - change to the end of line
R - replace until esc
J - join with line below with one space between
H - move to top of screen
M - move to middle of screen
L - move to bottom of screen
u - undo
Ctrl + r - redo
w or W - jump to next start of word without and with punctuation
e or E - same, but jump to end of words
b or B - backwards to start of words
% - go to matching {[(
0 - start of line
^ - first non-blank char in line
$ - end of line
gg - first line of file
G - last line of file
number gg - go to line number
{ or } - jump to previous next block of code
i, I, a, A, o, O - go into insert mode at different location
m(x) - mark a line with char x
'(x) - jump to mark x
L m - marks list
'. - last line edited on file
'" - last line before exiting file

(num)== - re-indent next x lines
]p - paste while adjusting indentation
gp - paste and move cursor to end of paste

(num)yy - yank lines (num) optional
yiw - yank word
Y - yank to end of line
(num)dd - cut lines (num) optional
diw - cut word under cursor
D - delete until end of line
x - cut one char

qa - record macro a
q - stop recording macro
@a - run macro a
@@ - rerun last run macro

visual mode:
y - yank (copy)
d - delete
~ - switch case
u - lowercase
U - uppercase

L fo - format selected
gd - go to definition
gi - go to implementation
gr - go to references
[g - next
]g - previous
K - show documentation

L w - text wrap
L l - goyo + limelight
L f - goyo

ctrl + e - markdown preview

L sdi - init.vim
L sdp - plugins.vim
L sds - settings.vim
L sdm - mappings.vim
L ss - source new settings

add base vim shortcuts here
fix or search how to split easier
search about tabs
search how to navigate tree view again
text if markdown preview is working
search macros again
fix ctrl + o fzf :Files
fix ctrl + f fzf :Rg
fix jump projects
fix toggle caps word

