" Set up the colorscheme
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="berlinnight"

" Load the Lua module
lua <<EOF
local ok, berlinnight = pcall(require, 'berlinnight')
if ok then
  berlinnight.load()
else
  vim.api.nvim_err_writeln("Failed to load berlinnight: " .. berlinnight)
end
EOF
