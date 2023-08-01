-- Some definitions 
local keymap = vim.keymap.set
local opts = { silent = true }

-- Remap leader to comma
vim.g.mapleader = ','

-- Quick editing of vimrc; doesn't make sense anymore
--nnoremap <silent> <leader>ev :e ~/.vimrc<CR>
--nnoremap <silent> <leader>sv :so ~/.vimrc<CR>

-- Modes
--   normal_mode: "n",
--   insert_mode: "i",
--   visual_mode: "v"
--   visual_block_mode: "x"
--   term_mode: "t"
--   command_mode: "c"
--   operator-pending: "o"

keymap(
  {'n', 'o'}, ';', ':', 
  {
    desc = "Avoid having to hold <Shift> when typing ':' in commands",
    silent = true,
    remap = false
  }
)

--  Navigate tabs with arrow keys
keymap(
  'n', '<C-h>', '<C-w>h',
  {
    desc = "Move to the window on the left.",
    silent = true,
    remap = false
  }
)

keymap(
  'n', '<C-j>', '<C-w>j',
  {
    desc = "Move to the window on below.",
    silent = true,
    remap = false
  }
)

keymap(
  'n', '<C-k>', '<C-w>k',
  {
    desc = "Move to the window on above.",
    silent = true,
    remap = false
  }
)

keymap(
  'n', '<C-l>', '<C-w>l',
  {
    desc = "Move to the window to the right.",
    silent = true,
    remap = false
  }
)

keymap(
  'n', '<S-h>', ':bprev<CR>',
  {
    desc = "Move to the previous buffer.",
    silent = true,
    remap = false
  }
)

keymap(
  'n', '<S-l>', ':bnext<CR>',
  {
    desc = "Move to the next buffer.",
    silent = true,
    remap = false
  }
)

keymap(
  "n", "<Left>", ":tabp<CR>",
  {
    desc = "Move to the previous tab.",
    silent = true,
    remap = false
  }
)

keymap(
  "n", "<Right>", ":tabn<CR>",
  {
    desc = "Move to the next tab.",
    silent = true,
    remap = false
  }
)

keymap(
  "n", "<leader>o", ":only<CR>",
  {
    desc = "Zoom to show only the current window.",
    silent = true,
    remap = false
  }
)


-- Toggle hilighting
keymap(
  "n", "<F4>", ":set hlsearch! hlsearch?<CR>",
  {
    desc = "Toggle hilighting search and display current value.",
    silent = true,
    remap = false
  }
)

-- Turn off <F1> help mapping
keymap(
  {'i', 'v', 'n'}, "<F1>", "<ESC>",
  {
    desc = "Map <F1> to <ESC> to avoid help mapping.",
    silent = true,
    remap = false
  }
)

-- Shortcut to rapidly toggle `set list`
keymap(
  'n', "<leader>l", ":set list! list?<CR>",
  {
    desc = "Toggle whether list characters are shown",
    silent = true,
    remap = false
  }
)

-- Toggle NvimTree
keymap(
  "n", "<leader>et", ":NvimTreeToggle<CR>",
  {
    desc = "Toggle the file tree.",
    silent = true,
    remap = false
  }
)

