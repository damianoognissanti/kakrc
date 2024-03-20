# Set the colour scheme
colorscheme gruvbox-dark

# Width of a tab
set-option global tabstop 4

# Indent with 4 spaces
set-option global indentwidth 4

# Always keep one line and three columns displayed around the cursor
set-option global scrolloff 1,3

# Display line numbers
add-highlighter global/ number-lines -hlcursor

# Highlight trailing whitespace
add-highlighter global/ regex \h+$ 0:Error

# Softwrap long lines
add-highlighter global/ wrap -word -indent

# Highlight current line
add-highlighter global/ line '%val{cursor_line}' default,bright-black

## Change cursor color in insert mode
# Shades of blue/cyan for normal mode
set-face global PrimarySelection white,blue+F
set-face global SecondarySelection black,blue+F
set-face global PrimaryCursor black,bright-cyan+F
set-face global SecondaryCursor black,bright-blue+F
set-face global PrimaryCursorEol black,bright-cyan
set-face global SecondaryCursorEol black,bright-blue

# Shades of green/yellow for insert mode.
hook global ModeChange (push|pop):.*:insert %{
    set-face window PrimarySelection white,green+F
    set-face window SecondarySelection black,green+F
    set-face window PrimaryCursor black,bright-yellow+F
    set-face window SecondaryCursor black,bright-green+F
    set-face window PrimaryCursorEol black,bright-yellow
    set-face window SecondaryCursorEol black,bright-green
}

# Undo colour changes when we leave insert mode.
hook global ModeChange (push|pop):insert:.* %{
    unset-face window PrimarySelection
    unset-face window SecondarySelection
    unset-face window PrimaryCursor
    unset-face window SecondaryCursor
    unset-face window PrimaryCursorEol
    unset-face window SecondaryCursorEol
}
