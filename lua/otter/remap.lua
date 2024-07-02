-- Leader key to space
vim.g.mapleader = " "

-- Cursor to block
vim.opt.guicursor = ""

-- Line numbers + relative numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Set tabs to space & 4 space length
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Context-based indent
vim.opt.smartindent = true

-- Enable word wrap
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Disable swap file
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disable highlighting on incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable terminal colors
vim.opt.termguicolors = true

-- No less than 8 characters at bottom of buffer
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Decrease buffer update time
vim.opt.updatetime = 50

-- Enable wrap column
vim.opt.colorcolumn = "80"

-- Enable move text on highlight
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Enable half page jumps
vim.keymap.set("n", "<C-x>", "<C-d>zz")
vim.keymap.set("n", "<C-z>", "<C-u>zz")

-- Set search term increment to n or N
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Enable copy on select
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Enable copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Save changes on vertical select
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Q mode
vim.keymap.set("n", "Q", "<nop>")

-- Enable quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Enable find and replace
vim.keymap.set("n", "<leader>f", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

