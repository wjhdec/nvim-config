local utils = require('utils')
utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape

utils.map('n', '<C-f>', ':NvimTreeFindFile<CR>')
utils.map('n', '<C-r>', ':NvimTreeRefresh<CR>')
utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')

utils.map('n', '<F8>', ':TagbarToggle<CR>')
