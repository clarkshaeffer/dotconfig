# NEOVIM SHORTCUTS REFERENCE

# Navigation
'<C-u>'  # up half
'<C-d>'  # down half
'm[A-Z0-9]'  # set mark
'`[A-Z0-9]'  # go to mark
'<C-o>'  # jump back
'<C-i>'  # jump forwards

# lists
':reg'  # macros + registers
':marks'
':ju'

# Macros
'q[A-Z0-9]'  # start recording at register, 'q' to end
'@[A-Z0-9]'  # run recorded macro

# Harpoon (custom)
'<C-e>'  # open harpoon menu
'<leader>a'  # add current file to harpoon menu
'<C-h>'  # go to harpoon 1
'<C-t>'  # go to harpoon 2
'<C-n>'  # go to harpoon 3
'<C-s>'  # go to harpoon 4

# netrw
'd'  # new directory
'%'  # new file

# Telescope (custom)
'<leader>pf'
'<C-p>'
'<leader>ps'

# Comment.nvim
'gcc'  # comment line(s), 'gc' in visual
'gco'  # new line with comment
'gcA'  # new comment at end of line

# surround
'ysiw'  # or ['"({ surround words
'yst/f/$'  # surround up to selection
'cs'  # change surrounding pair
'ds'  # delete surrounding pair; 'dsf' for function calls

# lsp-zero
