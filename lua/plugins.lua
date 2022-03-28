vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'fatih/vim-go'
  use 'Blackrush/vim-gocode'

  use 'preservim/tagbar'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  use {'neoclide/coc.nvim', branch = 'release'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  require('lualine').setup {
    options = {theme = 'ayu_light'}
  }

  use 'ryanoasis/vim-devicons'

  use "projekt0n/github-nvim-theme"

  use "jiangmiao/auto-pairs"
  use "gisphm/vim-gitignore"

end)
