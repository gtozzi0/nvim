vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("syntax on")

local opt = vim.opt -- for conciseness

-- misc
opt.wildmenu = true --show list instead of just completing
opt.wildmode = { "list:longest", "full" } -- change tab completion to be like Bash's
opt.wildignore = { "*.o", "*.obj", "*~", "*.swp", "*.pyc" }
opt.showcmd = true -- show commands
opt.autochdir = true -- change curr working dir whenever open file, switch buffers, delete buffer, open/close window
opt.showmatch = true -- briefly jump to matching paren, brace, or bracket to verify matching
opt.errorbells = false -- disable error bells

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.ruler = true -- line and col in lower left corner

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.shiftround = true -- round indent to multiple of shiftwidth
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true -- does smart indentations (eg indent after opening brace)
-- opt.softtabstop=4 -- how may spaces right when tab, and left when backspace

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.incsearch = true -- find as you type search
opt.hlsearch = true -- highlight search terms
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
-- opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = { "indent", "eol", "start" } -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
