local M = {}

M.setup = function(opts)
  -- You can add any setup options here if needed
end

M.load = function()
  local theme = require('berlinnight.theme')

  vim.cmd('hi clear')
  vim.o.background = 'dark'
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'berlinnight'

  theme.set_highlights()
end

return M
