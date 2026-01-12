#! Basics - Vi, Globbing 
#? - 103.8 Basic file editing (vi)
#? * __Objectives:__
    #? - Navigate a document using vi.
    #? - Understand and use vi modes.
    #? - Insert, edit, delete, copy and find text in vi.
    #? - Awareness of Emacs, nano and vim.

vi mytextfile.txt # open "mytextfile.txt" with vi.

<escape> # use this to go back to the MODE "read only" and use the options after ":"

# Command mode: "presentation mode"
:q      # quit
:q!     # quit without saving changes, force quit
:w      # write file (save)
:wq     # write file and quit


     Λ
     k
 < h   l >    # basic motion
     j
     V

i       # INSERT MODE: enter "edit mode"    
gg      # go to first line in file
G       # go to end of file #! interview
dd      # deletes the line
u       # undo
U       # redo
ctrl+R  # redo
o       # create a new line under the cursor
a       # append after the cursor
v       # use "v" to select the line
d       # [cut] the line or text selected
y       # yank (copy) the text selected
yy      # yank (copy) a line
p       # [paste] the text selected
ZZ      # Exits the editor, saving the changes
/search_pattern<Enter> # Search for a pattern in the file (press `n`/`N` to go to next/previous match):
?search_pattern<Enter> # Search backward for pattern
:%s/regular_expression/replacement/g<Enter> # Perform a regular expression substitution in the whole file
:set nu<Enter> # Display the line numbers


#? The vipw and vigr commands
vipw # Edit securely the "/etc/passwd" file
vipw -s # Edit securely the "/etc/shadow" file
vigr # Edit securely the "/etc/group" file


vimtutor # opens a vim tutorial
curl cheat.sh/vim
curl cheat.sh/emacs # get info about other powerfull text editor: Emacs