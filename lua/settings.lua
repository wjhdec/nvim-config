local u = require('utils')

local indent = 2

vim.g.mapleader = ';'
vim.g.translator_default_engines = {'bing'}

-- global options
local o = vim.o
-- window-local options
local wo = vim.wo
-- buffer-local options
local bo = vim.bo

-- global
o.hidden = true
o.ignorecase = true
o.smartcase = true
o.scrolloff = 4
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.wildmode = 'list:longest'
o.clipboard = 'unnamed,unnamedplus'

-- window-local
wo.number = true

-- buffer-local
bo.expandtab = true
bo.shiftwidth = indent
bo.smartindent = true
bo.tabstop = indent


local cmd = vim.cmd

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'colorscheme github_light'

vim.api.nvim_command([[
autocmd FileType go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd FileType go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd FileType go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd FileType go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
]])

require'nvim-tree'.setup {
  actions = {
    open_file = {
      resize_window = true
    }
  }
} 

