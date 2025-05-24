vim.g.mapleader = ' ' -- The <leader> key will be space

local keymap = vim.keymap -- for conciseness

keymap.set('i', 'ññ', '<ESC>', { desc = 'Exit insert mode with ññ' }) -- "mode", "patterns to press", "result"

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'When pressing <leader>nh will remove highlights' })

keymap.set('n', 'x', '"_x') -- when pressing x to delete a character it will not copy it to the register (as done by default)

keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment a number' })
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement a number' })

-- Window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = '[s]plit window [v]ertically' })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = '[s]plit window [h]orizontally' })
keymap.set('n', '<leader>se', '<C-w>=', { desc = '[s]plit windows [e]qual width' })
keymap.set('n', '<leader>sx', ':close<CR>', { desc = 'close current split window' })
-- keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'Open current tab' })
keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = 'Go to [n]ext [t]ab' })
keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = 'Go to [p]revious [t]ab' })
keymap.set('n', '<C-t>', ':terminal<CR>', { desc = 'Open Terminal' })
keymap.set('n', '<leader>tf', ':tabnew %<CR>', { desc = 'Go to [p]revious [t]ab' })

-- custom
-- keymap.set('n', '<leader>hn', '<leader>to<CR><leader>lg<CR>', { desc = 'Open LazyGit in new tab' })
keymap.set('i', 'clg<Tab>', 'console.log();<Left><Left>', { desc = 'Expand clg to console.log() with cursor in parentheses' })
keymap.set('n', '<leader>clg<Tab>', 'oconsole.log();<Left><Left>', { desc = 'Expand clg to console.log() with cursor in parentheses' })
keymap.set('n', 'yd', ':%y<CR>', { desc = 'Yank whole document' })
