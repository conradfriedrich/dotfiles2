require("config.lazy")

vim.cmd.colorscheme("catppuccin")

-- X spaces tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true -- true: replaces tabs with spaces

-- Make Neovim behave in a sane manner
vim.opt.encoding = "utf-8" -- Set encoding to UTF-8
vim.opt.scrolloff = 3 -- Keep 3 lines visible above/below the cursor
vim.opt.autoindent = true -- Enable automatic indentation
vim.opt.smartindent = true -- Enable automatic indentation
vim.opt.cindent = true -- indentation for c-like languages
vim.opt.showmode = true -- Show mode in command line
vim.opt.showcmd = true -- Show partial commands in the status line
vim.opt.hidden = true -- Allow buffers to be hidden without saving
vim.opt.wildmenu = true -- Enable wildmenu for command-line completion
vim.opt.wildmode = { "list", "longest" } -- Wildmenu behavior: show list and complete to longest match
-- vim.opt.visualbell = true         -- Commented out to match original .vimrc
vim.opt.cursorline = true -- Highlight the current line
vim.opt.ttyfast = true -- Assume fast terminal connection
vim.opt.ruler = true -- Show cursor position
vim.opt.backspace = { "indent", "eol", "start" } -- Make backspace work more naturally
vim.opt.laststatus = 2 -- Always show the status line
vim.opt.relativenumber = true -- Commented out to match original .vimrc

-- Make undos persist through sessions
vim.opt.undofile = true -- Enable persistent undo

-- Search settings
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true -- Override ignorecase if search pattern contains uppercase letters
vim.opt.gdefault = true -- Use 'g' flag by default for substitutions
vim.opt.incsearch = true -- Show search matches as you type
vim.opt.showmatch = true -- Briefly jump to matching bracket
vim.opt.hlsearch = true -- Highlight search matches

-- Long Line Handling
vim.opt.wrap = true -- Enable line wrapping
vim.opt.textwidth = 99 -- Set text width limit
vim.opt.formatoptions = "qrn1" -- Formatting options for automatic text formatting
-- vim.opt.colorcolumn = "80"    -- Commented out to match original .vimrc

-- Show Whitespace Characters
vim.opt.list = true -- Commented out to match original .vimrc
vim.opt.listchars = { tab = "▸ ", eol = "¬" } -- Commented out to match original .vimrc

-- UI Settings
vim.opt.number = true -- Show line numbers
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- Key mappings
vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<leader><space>", ":noh<CR>", { noremap = true, silent = true }) -- Clear search highlight
-- vim.api.nvim_set_keymap("n", "<Tab>", "%", { noremap = true, silent = true }) -- Jump to matching bracket in normal mode
-- vim.api.nvim_set_keymap("v", "<Tab>", "%", { noremap = true, silent = true }) -- Jump to matching bracket in visual mode

-- Map 'kj' to Escape in insert mode
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })

-- Map 'df' to Escape in insert mode
vim.api.nvim_set_keymap("i", "<C-e>", "<C-o>A", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>bq", ":bp<bar>sp<bar>bn<bar>bd<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>wh", "<C-W>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wj", "<C-W>j", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wk", "<C-W>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wl", "<C-W>l", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ww", "<C-W>w", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wv", "<C-W>v", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wq", "<C-W>q", { noremap = true, silent = true })
