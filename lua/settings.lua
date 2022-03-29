local utils = require('utils')

local cmd = vim.cmd
local indent = 2

vim.g.mapleader = ';'

cmd 'syntax enable'
cmd 'filetype plugin indent on'
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)

utils.opt('o', 'clipboard','unnamed,unnamedplus')

cmd 'colorscheme github_light'

vim.api.nvim_command([[
autocmd FileType go nmap <leader>b :!go build %<CR>
autocmd FileType go nmap <leader>r :!go run %<CR>
autocmd FileType go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd FileType go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd FileType go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd FileType go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
autocmd FileType go nmap <leader>t :!go test %<CR>
]])

require'nvim-tree'.setup {
  actions = {
    open_file = {
      resize_window = true
    }
  }
} 

