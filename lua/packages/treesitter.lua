require('nvim-treesitter.configs').setup({
  ensure_installed = 'all',

  highlight = {
    enable = true,
  },

  indent = {
    enable = true,
  },
})

-- vim.api.nvim_exec([[
--  set foldmethod=expr
--  set foldexpr=nvim_treesitter#foldexpr()
-- ]], true)

