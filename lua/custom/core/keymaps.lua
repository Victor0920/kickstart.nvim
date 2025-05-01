vim.g.mapleader = ' ' -- The <leader> key will be space

local keymap = vim.keymap -- for conciseness

keymap.set('i', 'jk', '<ESC>') -- "mode", "patterns to press", "result"

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'When pressing <leader>nh will remove highlights' })

keymap.set('n', 'x', '"_x') -- when pressing x to delete a character it will not copy it to the register (as done by default)

keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment a number' })
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement a number' })

keymap.set('n', '<leader>sv', '<C-w>v', { desc = '[s]plit window [v]ertically' })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = '[s]plit window [h]orizontally' })
keymap.set('n', '<leader>se', '<C-w>=', { desc = '[s]plit windows [e]qual width' })
keymap.set('n', '<leader>sx', ':close<CR>', { desc = 'close current split window' })

keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'Open new tab' })
keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = 'Go to [n]ext [t]ab' })
keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = 'Go to [p]revious [t]ab' })

-- plugin keymaps
-- vim-maximizer
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>')
