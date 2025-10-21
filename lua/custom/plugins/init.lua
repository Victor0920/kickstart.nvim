return {
  'nvim-lua/plenary.nvim',
  'christoomey/vim-tmux-navigator', -- tmux split and window navigation
  'hrsh7th/cmp-nvim-lsp',
  {
    'glepnir/lspsaga.nvim',
    branch = 'main',
  },
  'jose-elias-alvarez/typescript.nvim',
  'onsails/lspkind.nvim',
  'nvim-pack/nvim-spectre', -- For global search and replace
  require 'custom/plugins/gitsigns', -- adds gitsigns recommend keymaps
}
