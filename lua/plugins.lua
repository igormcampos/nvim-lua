local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever plugins.lua file is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call to not get error on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "joshdick/onedark.vim" -- theme
  use 'windwp/nvim-autopairs' -- will try to close pairs like {("
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'justinmk/vim-sneak' -- jump to texts

  -- telescope
  use 'BurntSushi/ripgrep' -- requirement for telescope
  use 'nvim-telescope/telescope.nvim' -- file and text search
  use 'junegunn/fzf' -- requirement for telescope-fzf-native
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- makes fzf commands available in telescope
  use 'cljoly/telescope-repo.nvim' -- list projects with git
  use 'airblade/vim-rooter' -- change root dir of a project when switching files

  -- tree
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- cmp plugins
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"
  use "saadparwaiz1/cmp_luasnip"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- LSP
  use "neovim/nvim-lspconfig" -- lsp base
  use 'williamboman/nvim-lsp-installer' -- auto install lsp
  use 'glepnir/lspsaga.nvim' -- more commands

  -- old plugins, check which will keep
  use 'itchyny/lightline.vim' -- bottom bar
  use 'mhinz/vim-signify' -- git side change icons

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

