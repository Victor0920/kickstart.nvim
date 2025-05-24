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

  require 'custom/plugins/gitsigns', -- adds gitsigns recommend keymaps
}
