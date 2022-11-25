local A = vim.api
local map = A.nvim_set_keymap

local PQ = require('potpourri.parenthesis_quotes')
local PY = require('potpourri.python')



function mange()
    print('Mange ton chien !')
end




--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- local map_opt = { noremap = true, silent = true }
-- local map_opt = { noremap = true}
local map_opt = {}

map('n', '<leader>mtc', ':lua mange()<cr>', map_opt)

-- parenthesis / quote
map('n', '<leader>ppr', ':lua PQ.search_and_action("parenthesis", "replace")<cr>', map_opt)
map('n', '<leader>pqr', ':lua PQ.search_and_action("quote", "replace")<cr>', map_opt)


map('n', '<leader>ppd', ':lua PQ.search_and_action("parenthesis", "delete")<cr>', map_opt)
map('n', '<leader>pqd', ':lua PQ.search_and_action("quote", "delete")<cr>', map_opt)

map('n', '<leader>ppD', ':lua PQ.search_and_action("parenthesis", "DELETE")<cr>', map_opt)
map('n', '<leader>pqD', ':lua PQ.search_and_action("quote", "DELETE")<cr>', map_opt)


map('n', '<leader>ppi', ':lua PQ.search_and_action("parenthesis", "insert_start")<cr>', map_opt)
map('n', '<leader>pqi', ':lua PQ.search_and_action("quote", "insert_start")<cr>', map_opt)

map('n', '<leader>ppI', ':lua PQ.search_and_action("parenthesis", "INSERT_START")<cr>', map_opt)
map('n', '<leader>pqI', ':lua PQ.search_and_action("quote", "INSERT_START")<cr>', map_opt)

map('n', '<leader>ppa', ':lua PQ.search_and_action("parenthesis", "insert_end")<cr>', map_opt)
map('n', '<leader>pqa', ':lua PQ.search_and_action("quote", "insert_end")<cr>', map_opt)

map('n', '<leader>ppA', ':lua PQ.search_and_action("parenthesis", "INSERT_END")<cr>', map_opt)
map('n', '<leader>pqA', ':lua PQ.search_and_action("quote", "INSERT_END")<cr>', map_opt)

-- Python
map('n', '<leader>p(',  ':lua PY.close_python_function(true)<cr>', map_opt)
map('n', '<leader>p)',  ':lua PY.close_python_function(false)<cr>', map_opt)
map('i', '<C-p>',  '<ESC>:lua PY.close_python_function(true)<cr>', map_opt)
