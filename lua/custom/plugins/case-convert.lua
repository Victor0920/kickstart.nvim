return {
  'chiedo/vim-case-convert',
  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>ñctd', '<cmd>:CamelToHyphen<CR>', { desc = 'CameCase to dash-case' })
    keymap.set('n', '<leader>cccts', '<cmd>:CamelToSnake<CR>', { desc = 'CameCase to snake_case' })
    keymap.set('n', '<leader>ccdtc', '<cmd>:HyphenToCamel<CR>', { desc = 'dash-case to CameCase' })
    keymap.set('n', '<leader>ccdts', '<cmd>:HyphenToSnake<CR>', { desc = 'dash-case to snake_case' })
    keymap.set('n', '<leader>ccstc', '<cmd>:SnakeToCamel<CR>', { desc = 'snake_case to CamelCase' })
    keymap.set('n', '<leader>ccstd', '<cmd>:SnakeToHyphen<CR>', { desc = 'snake_case to dash-case' })
  end,
}
