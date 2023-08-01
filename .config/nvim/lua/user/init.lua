-- The configurations inspired by
-- https://github.com/LunarVim/nvim-basic-ide
-- https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/

-- Disable netrw to avoid conflicting with NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Pull in all of our configurations
require("user.options")
require("user.remap")
require("user.plugins")

-- Autocompile plugins when plugin file is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require("user.colorscheme")
require("user.nvim-tree")
