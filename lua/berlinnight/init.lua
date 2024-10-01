local M = {}
local theme = require('berlinnight.theme')

M.setup = function(opts)
    -- You can add any setup options here if needed
    -- For example: M.config = vim.tbl_deep_extend("force", {}, opts or {})
end

M.load = function()
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
