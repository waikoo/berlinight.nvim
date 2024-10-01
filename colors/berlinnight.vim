" Set up the colorscheme
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="berlinnight"

" Load the Lua module
lua require('berlinnight').load()
