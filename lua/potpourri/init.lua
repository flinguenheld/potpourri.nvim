local A = vim.api
local map = A.nvim_set_keymap

local RP = require('potpourri.replace')



local function mange()
    print('Mange ton chien !')
end


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- local map_opt = { noremap = true, silent = true }
-- local map_opt = { noremap = true}
local map_opt = {}

map('n', '<leader>mtc', ':lua mange()<cr>', map_opt)
map('n', '<leader>ppr', ':lua RP.replace_parenthesis()<cr>', map_opt)
map('n', '<leader>pqr', ':lua RP.replace_quote()<cr>', map_opt)
