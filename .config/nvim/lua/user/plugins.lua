-- Put our plugins here

-- Assumes that packer was checked out as per the instructions 
-- on the website. If using the dotfiles repo, this should be done
-- automatically.
--   git clone --depth 1 https://github.com/wbthomason/packer.nvim \
--      $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
    clone_timeout = 300, -- Timeout, in seconds, for git clones
  },
}

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Manage packer with packer
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'   -- I guess other plugins use this?

  -- Colorschemes
  use 'dracula/vim'
  use 'jacoborus/tender.vim'
  
  -- WhichKey for learning keybindings
  use {
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Plugin for tree
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
 
  -- Tree-sitter + modules
  use 'nvim-treesitter/nvim-treesitter'

  -- Telescope + friends (fuzzy finder)


end)

