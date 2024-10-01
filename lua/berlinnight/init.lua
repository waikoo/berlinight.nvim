local M = {}

M.setup = function(opts)
  print("Berlinnight setup called")
  -- You can add any setup options here if needed
end

M.load = function()
  print("Berlinnight load called")
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
