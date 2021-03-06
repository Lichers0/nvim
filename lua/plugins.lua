-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'
  use 'glepnir/lspsaga.nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  -- use {'tzachar/compe-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-compe'}
  use 'tzachar/compe-tabnine'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'windwp/nvim-autopairs'
  use 'AndrewRadev/tagalong.vim'
  use 'andymass/vim-matchup'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'p00f/nvim-ts-rainbow'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'romgrk/nvim-treesitter-context'
  -- My
  use 'nvim-treesitter/playground'
  -- use 'nvim-treesitter/nvim-treesitter-textobjects' -- own blocks for commnd (ruby)

  -- Syntax
  use 'moll/vim-node'
  use 'zinit-zsh/zplugin-vim-syntax'
  use 'editorconfig/editorconfig-vim'
  use 'chrisbra/csv.vim'
  use 'npxbr/glow.nvim'
  use 'junegunn/vim-easy-align' -- A simple, easy-to-use Vim alignment plugin

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'famiu/feline.nvim'
  use 'romgrk/barbar.nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'fhill2/telescope-ultisnips.nvim'
  use { 'pwntester/octo.nvim', requires = {{'nvim-lua/plenary.nvim'}, {'nvim-lua/popup.nvim'}} }

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Color
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  use { 'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'} }
  use 'kdheepak/lazygit.nvim'
  use 'rhysd/committia.vim'
  use 'sindrets/diffview.nvim'

  -- Flutter
  use 'akinsho/flutter-tools.nvim'

  -- Registers
  use 'tversteeg/registers.nvim'

  -- Move & Search & replace
  use 'windwp/nvim-spectre'
  use 'nacro90/numb.nvim'
  use 'dyng/ctrlsf.vim'
  use 'kevinhwang91/nvim-hlslens'
  use 'ggandor/lightspeed.nvim'
  use 'kshenoy/vim-signature'
  use 'karb94/neoscroll.nvim'
  use 'dstein64/nvim-scrollview'
  use 'chaoren/vim-wordmotion'
  use 'michaeljsmith/vim-indent-object'

  -- Tim Pope docet
  use 'tpope/vim-sensible'
  use 'tpope/vim-rails'
  use 'tpope/vim-abolish'
  use 'tpope/vim-surround'
  use 'tpope/vim-bundler'
  use 'tpope/vim-capslock'
  use 'tpope/vim-repeat'
  use 'tpope/vim-endwise'
  use 'tpope/vim-rvm'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-dadbod'
  use 'tpope/vim-jdaddy'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  -- '] ' ']e'
  use 'tpope/vim-unimpaired'

  -- Tmux
  use 'christoomey/vim-tmux-navigator'

  -- Colorschema
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/sonokai'

  -- Tags
  use 'ludovicchabant/vim-gutentags'

  -- General Plugins
  use 'airblade/vim-rooter'
  use 'mhinz/vim-startify'
  use 'jeffkreeftmeijer/vim-numbertoggle'
  use 'lambdalisue/suda.vim'
  use 'numtostr/FTerm.nvim'
  use 'wfxr/minimap.vim'
  use 'folke/todo-comments.nvim'

  use 'simrat39/symbols-outline.nvim' -- methods tree + params windows
  use 'szw/vim-maximizer' -- :MaximizerToggle
  use 'vim-ruby/vim-ruby'
  use 'slim-template/vim-slim'
  use 'easymotion/vim-easymotion'
  -- use 'machakann/vim-sandwich' -- analog vim-surround
  -- use 'rstacruz/vim-closer' -- Closes brackets. Perfect companion to vim-endwise. Basically, a more conservative version of auto-pairs that only works when you press Enter.
  use 'folke/which-key.nvim'
  use 'lazytanuki/nvim-mapper'

  -- Test tools
  use 'vim-test/vim-test' -- test runner
  use { "rcarriga/vim-ultest", requires = {"vim-test/vim-test"}, run = ":UpdateRemotePlugins" } -- rcarriga/dotfiles
  use 'preservim/vimux' -- terminal(tmux) for test runner

  -- lua development
  use 'bfredl/nvim-luadev' -- environment for developing
  -- Dooker
  use 'kkvh/vim-docker-tools'
  -- Quokka realtime debug buffer
  use 'metakirby5/codi.vim'
  -- Fuzzy in :e :s
  use 'gelguy/wilder.nvim'
end)
