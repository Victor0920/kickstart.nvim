return {
  'nvim-neorg/neorg',
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {},
        ['core.keybinds'] = {
          config = {
            neorg_leader = ',',
          },
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/notes',
              main = '~/Projects/Snap/notes',
            },
            default_workspace = 'main',
          },
        },
      },
    }

    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
