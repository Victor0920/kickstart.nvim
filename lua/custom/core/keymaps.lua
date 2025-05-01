vim.g.mapleader = ' ' -- The <leader> key will be space

local keymap = vim.keymap -- for conciseness

keymap.set('i', 'jk', '<ESC>') -- "mode", "patterns to press", "result"

keymap.set('n', '<leader>nh', ':nohl<CR>') -- When pressing <leader>nh will remove highlights

keymap.set('n', 'x', '"_x') -- when pressing x to delete a character it will not copy it to the register (as done by default)

keymap.set('n', '<leader>+', '<C-a>') -- Increment a number
keymap.set('n', '<leader>-', '<C-x>') -- Decrement a number

keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=') -- split windows equal width
keymap.set('n', '<leader>sx', ':close<CR>') -- Close current split window
