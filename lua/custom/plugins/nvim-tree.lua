return {
  -- file explorer
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
  },
  after = 'nvim-web-devicons',
  config = function()
    local nvimtree = require 'nvim-tree'

    local open_win_config_func = function()
      local scr_w = vim.opt.columns:get()
      local scr_h = vim.opt.lines:get()
      local tree_w = 80
      -- local tree_h = math.floor(tree_w * scr_h / scr_w)
      local tree_h = math.floor(scr_h * 0.8)
      return {
        border = 'double',
        relative = 'editor',
        width = tree_w,
        height = tree_h,
        col = (scr_w - tree_w) / 2,
        row = (scr_h - tree_h) / 2,
      }
    end

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup {
      view = {
        -- width = 35,
        -- relativenumber = true,
        signcolumn = 'yes',
        float = {
          enable = true,
          open_win_config = open_win_config_func,
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      git = {
        ignore = false,
      },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle File Explorer' })
    keymap.set('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle File Explorer on current window' })
    keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse File Explorer' })
    keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' })
  end,
}
