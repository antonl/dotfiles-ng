local set = vim.opt

set.backup = false                -- Don't create backup files
--set.writebackup = false           -- 
set.swapfile = false              -- Don't create swp files
set.clipboard = "unnamedplus"     -- Access system clipboard
set.fileencoding = "utf-8"        -- Use UTF-8 for all files
set.autoread = true               -- Autoread a file if it's changed from outside
set.hidden = true                 -- Don't destroy buffers, hide them

set.wrap = true                   -- Wrap long lines (alternative is offscreen)
set.whichwrap:append("<,>,h,l")   -- Navigate wrapped lines in the same way as real lines
set.breakindent = true            -- Preserve indentation of visual line

set.tabstop = 2                   -- Size of tab character in columns
set.softtabstop = 2               -- The effective size of tab characters for the purposes of motions
set.shiftwidth = 2                -- Default indentation setting
set.expandtab = true              -- Whether to convert tabs into spaces

set.smartindent = true            -- Smart indenting when starting new line
set.copyindent = true             -- Copy indenting on copy/paste
set.backspace = "indent,eol,start"-- Use BS to delete everything

set.history = 10000               -- Lots of history
set.undolevels = 10000            -- Lots of undo
set.undofile = true               -- Persistent undo

set.number = true                 -- Show line numbers
set.numberwidth = 4               -- Width of line number display
set.relativenumber = true         -- Use relative numbers except for current line
set.signcolumn = "yes"            -- Always show sign column to avoid changing widths
set.ruler = true                  -- Show ruler in status line
set.cmdheight = 2                 -- The command-bar height
set.listchars = "tab:▸\\ ,eol:¬"  -- When showing list, use TextMate chars
set.showtabline = 0               -- Always show tabs
set.showmode = true               -- Show the mode line
set.showcmd = true                -- 
set.laststatus = 2                -- 
set.cursorline = true             -- 
set.pumheight = 10                -- Pop-up menu height
set.scrolloff = 8                 -- Keep at least 8 lines of context around cursor
set.sidescrolloff = 8             -- 
set.wildmenu = true               -- Use Wild menu for completions

set.splitbelow = true             -- Always open splits below
set.splitright = true             -- Always open splits to the right

set.showmatch = true              -- Highlight matching brackets
--set.mat = 2                     -- How many tenths of a second to blink
set.hlsearch  = true              -- Highlight searches
set.incsearch = true              -- Search as you type
set.smartcase = true              -- Use case-insensitive search except for capital patterns
--set.gdefault = true             -- Make patterns global by default
set.magic = true                  -- Use regular expression classes
set.iskeyword:append("-")         -- Treat - character as word character

set.mouse = ""                    -- Disable mouse, gotta learn those keybinds
set.visualbell = true             -- Use visual bell instead of pinging terminal
-- set.t_vb = ""                  -- Gotta figure out how to disable visual bell

set.updatetime = 300              -- Do faster completion
set.timeoutlen = 1000             -- Time to wait for completion
