-- Use a protected call 
local colorscheme = "tender"

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
else
  vim.opt.background = "dark"           -- We like dark
  vim.opt.termguicolors = true          -- Use fancy colors in terminals
end
