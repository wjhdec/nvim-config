return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use { 'lewis6991/gitsigns.nvim', tag = 'release'}

  use 'fatih/vim-go'
  use 'Blackrush/vim-gocode'

  use 'preservim/tagbar'
  use 'kamykn/spelunker.vim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
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

  use "voldikss/vim-translator"
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  }

  use "lilydjwg/fcitx.vim"

end)
