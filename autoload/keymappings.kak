## Keymappings
# Clipboard management mappings
#Yank
map -docstring 'Yank to clipboard' global user y '<a-|>xclip -i -selection clipboard<ret>'
# Paste
map -docstring 'Paste clipboard' global user p '<a-!>xclip -out -selection clipboard<ret>'
map -docstring 'Paste clipboard' global user P '!xclip -out -selection clipboard<ret>'
#map -docstring 'Replace with clipboard' global user R '|xclip -out -selection clipboard<ret>'
# Filter lines that have a cursor
map -docstring 'Toggle selections focus' global user <space> ': focus-toggle<ret>'
# Inner mode without alt
map -docstring 'Mark inside/around' global user i <a-i>
map -docstring 'Mark inside/around' global user a <a-a>
# Rotate cursors
map -docstring 'Rotate selections' global user r <a-)>
map -docstring 'Rotate selections' global user R <a-(>
# Open fzf-mode
map -docstring 'Open fzf mode' global user f ': fzf-mode<ret>'
# Close buffer
map -docstring 'Close current buffer' global user q ': delete-buffer<ret>'
# Next buffer
map global normal <tab> ': buffer-next<ret>'
# Mark-all search
map global normal ä	'\%s'
# Open : with ö
map global normal ö ':'
