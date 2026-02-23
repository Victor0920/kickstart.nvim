vim.g.mapleader = ' ' -- The <leader> key will be space

local keymap = vim.keymap -- for conciseness

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'When pressing <leader>nh will remove highlights' })

keymap.set('n', 'x', '"_x') -- when pressing x to delete a character it will not copy it to the register (as done by default)

keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment a number' })
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement a number' })

-- Window management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = '[s]plit window [v]ertically' })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = '[s]plit window [h]orizontally' })
keymap.set('n', '<leader>se', '<C-w>=', { desc = '[s]plit windows [e]qual width' })
keymap.set('n', '<leader>sx', ':close<CR>', { desc = 'close current split window' })

keymap.set('n', '<leader>to', ':tabnew<CR>', { desc = 'Open current tab' })
keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader>tn', ':tabn<CR>', { desc = 'Go to [n]ext [t]ab' })
keymap.set('n', '<leader>tp', ':tabp<CR>', { desc = 'Go to [p]revious [t]ab' })
keymap.set('n', '<C-t>', ':terminal<CR>', { desc = 'Open Terminal' })
keymap.set('n', '<leader>tf', ':tabnew %<CR>', { desc = 'Go to [p]revious [t]ab' })

-- spectre (for global search and replace)
keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', { desc = 'Toggle Spectre' })
keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = 'Search current word' })
keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = 'Search current word' })
keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = 'Search on current file' })

-- neorg (for note-taking)
keymap.set('n', '<leader>ni', ':Neorg index<CR>', { desc = 'Go to Neorg index file' })
keymap.set('n', '<leader>nr', ':Neorg return<CR>', { desc = 'Return to code' })

-- custom
keymap.set('i', 'clgq', 'console.log();<Left><Left>', { desc = 'Expand clg to console.log() with cursor in parentheses' })
keymap.set('n', '<leader>clg<Tab>', 'oconsole.log();<Left><Left>', { desc = 'Expand clg to console.log() with cursor in parentheses' })
keymap.set('n', 'yd', ':%y<CR>', { desc = 'Yank whole document' })
keymap.set('n', 'sd', 'ggVGs', { desc = 'Substitute whole document' })
keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'move selected lines up' })
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'move selected lines down' })
keymap.set('v', '<', '<gv', { desc = 'add tab' })
keymap.set('v', '>', '>gv', { desc = 'remove tab' })
keymap.set('n', '<leader>vf', 'vaF', { desc = 'Visually select around function' })
keymap.set('n', '<A-o>', ':bprev<CR>', { desc = 'Previous Buffer' })
keymap.set('n', '<A-i>', ':bnext<CR>', { desc = 'Next Buffer' })
