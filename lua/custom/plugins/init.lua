return {
  'nvim-lua/plenary.nvim',
  'christoomey/vim-tmux-navigator', -- tmux split and window navigation
  -- 'szw/vim-maximizer',
  -- 'tpope/vim-surround',
  -- 'vim-scripts/ReplaceWithRegister',
  -- 'numToStr/Comment.nvim',
  -- 'nvim-lualine/lualine.nvim',
  -- 'hrsh7th/cmp-nvim-lsp',
  -- 'hrsh7th/nvim-cmp',
  -- 'hrsh7th/cmp-buffer',
  -- 'hrsh7th/cmp-path',
  -- 'L3MON4D3/LuaSnip',
  -- 'saadparwaiz1/cmp_luasnip',
  -- 'rafamadriz/friendly-snippets',
  -- {
  --   'windwp/nvim-autopairs',
  --   opts = {
  --     check_ts = true, -- enable tree sitter
  --     ts_config = {
  --       lua = { 'string' }, -- dont add pairs in lua string treesitter nodes
  --       javascript = { 'template_string' }, -- dont add pairs in javascript template_string
  --       java = false, -- dont check treesitter on java
  --     },
  --   },
  -- },
  -- 'windwp/nvim-ts-autotag',
  'hrsh7th/cmp-nvim-lsp',
  {
    'glepnir/lspsaga.nvim',
    branch = 'main',
  },
  'jose-elias-alvarez/typescript.nvim',
  'onsails/lspkind.nvim',

  require 'custom/plugins/gitsigns', -- adds gitsigns recommend keymaps
}
