-- Plugins

require("anshb")

-- Enable 24-bit colors
vim.o.termguicolors = true -- Needs to be set before certain plugins load

vim.g.calvera_italic_comments = true
vim.g.calvera_italic_keywords = true
vim.g.calvera_contrast = false
vim.g.calvera_borders = true
vim.g.calvera_custom_colors = { selection = '#36366b', float = '#1c1c42' } -- The default selection color is almost invisible :(

vim.o.scrolloff = 999

vim.o.shiftwidth = 4
vim.o.tabstop = 4

vim.opt.list = true
--vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append('eol:')

local function set_keymap(...)
   vim.api.nvim_set_keymap(...)
end

local opts = { noremap = true, silent = true }
set_keymap('n', '<leader>n', '<cmd>lua require"illuminate".next_reference{wrap=true}<CR>', opts)
set_keymap('n', '<leader>p', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)

vim.o.encoding = 'UTF-8'

-- Folds smaller than this will default to open
vim.o.foldminlines = 5

-- Folds are broken currently :(
--[[
   [-- 2 columns to show folding
   [vim.o.foldcolumn = "3"
   [vim.o.foldlevel = 3
   [vim.o.foldnestmax = 3
   [vim.o.foldmethod = "expr"
   [vim.o.foldexpr = "nvim_treesitter#foldexpr()"
   ]]

-- Causes tagbar to update more frequently
vim.o.updatetime = 250

-- Disable line wrapping
vim.o.wrap = false

-- Enable sign colum (for vim-gitgutter)
vim.o.signcolumn = 'yes'

--  Show substitution live
vim.o.inccommand = 'nosplit'

-- Enable syntax highlighting
vim.o.syntax = 'on'

-- Underline the cursor's current line
vim.o.cursorline = true

-- Not needed with lightline
vim.o.showmode = false

-- Enable auto indent
vim.o.autoindent = true

-- Force dark background
vim.o.background = 'dark'

-- Turn on line numbers
vim.o.number = true

-- Shows relative line numbers instead of absolute
vim.o.relativenumber = true

-- Allow directory specific nvim configuration
vim.o.exrc = true

-- Number of spaces to use for auto indentation
vim.o.shiftwidth = 2

-- Uses this many spaces in place of hard tabs, i.e. one <TAB> equals this many spaces
vim.o.softtabstop = 2

-- Number of spaces to replace a tab with
vim.o.tabstop = 2

-- Searches for words live as you type, see :help incsearch
vim.o.incsearch = true

-- Disable mouse support
vim.o.mouse = ''

-- Replace tabs with spaces
vim.o.expandtab = true

-- Show line and column of cursor position (It's in the bottom right)
vim.o.ruler = true

-- Enhanced tab completion in command mode
vim.o.wildmenu = true

-- Shows previous command run on bottom of the screen
vim.o.showcmd = true

-- Case insensitive searching
vim.o.ignorecase = true

-- Override ignorecase if search contains caps
vim.o.smartcase = true

-- Always show the status bar
vim.o.laststatus = 2

-- Highlights matching parens, braces, etc. Press % to jump to it, btw.
vim.o.showmatch = true

-- Keeps buffers opened in the background when 'abandonded'
vim.o.hidden = true

-- NOTES:
-- :verbose set formatoptions -- Shows the last thing to set a command
