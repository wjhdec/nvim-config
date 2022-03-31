local utils = require('utils')

local map = vim.api.nvim_set_keymap

options = { noremap = true }
map('n', '<C-l>', '<cmd>noh<CR>', options) -- Clear highlights
map('i', 'jk', '<Esc>', options)           -- jk to escape

map('n', '<C-f>', ':NvimTreeFindFile<CR>', options)
map('n', '<C-r>', ':NvimTreeRefresh<CR>', options)
map('n', '<C-n>', ':NvimTreeToggle<CR>', options)

map('n', '<F8>', ':TagbarToggle<CR>', options)

-- Barbar
local opts = {noremap=true,silent=true}
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)

-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)

map('n', '<leader>t', '<Plug>TranslateW', {silent=true})

function go_nmap(key, run)
  return {'FileType', 'go', 'nmap', key, run}
end

utils.create_augroup({
  go_nmap('<leader>b', ':!go build %<CR>'),
  go_nmap('<leader>r', ':!go run %<CR>'),
  go_nmap('<leader>gt', ':!go test %<CR>'),
}, 'go-nmap')

