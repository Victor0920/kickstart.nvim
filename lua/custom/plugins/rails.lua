return {
  {
    'tpope/vim-rails',
    ft = { 'ruby', 'eruby', 'haml', 'slim' },
    cmd = {
      'Eview',
      'Econtroller',
      'Emodel',
      'Emigration',
      'Eschema',
      'Espec',
      'Etest',
      'Rails',
    },
  },
  {
    'tpope/vim-bundler',
    ft = { 'ruby', 'eruby' },
    cmd = { 'Bundle', 'Bopen' },
  },
  {
    'tpope/vim-rake',
    ft = { 'ruby', 'eruby' },
    cmd = { 'Rake' },
  },
}
