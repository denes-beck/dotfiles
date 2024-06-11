---@diagnostic disable-next-line: undefined-global
local keymap = vim.keymap

-- Normal --
-- Lazy
keymap.set("n", "<leader>p", "<cmd>Lazy<CR>")

-- Mason
keymap.set("n", "<leader>m", "<cmd>Mason<CR>")

-- Buffer
keymap.set("n", "<leader>cc", "<cmd>bw<CR>") -- Close buffer
keymap.set("n", "<Tab>", "<cmd>bn<CR>") -- Next buffer
keymap.set("n", "<S-Tab>", "<cmd>bp<CR>") -- Previous buffer
keymap.set("n", "<leader>bo", "<cmd>%bd|e#|bd#<CR>") -- Close all buffers except current

-- Reset search highlight
keymap.set("n", "//", "<cmd>nohlsearch<CR>")

-- Create window split
keymap.set("n", "sh", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")

-- Move around splits
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
keymap.set("", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
keymap.set("", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
keymap.set("", "<C-l>", "<cmd>TmuxNavigateRight<CR>")

-- Resize split
keymap.set("n", "<M-h>", "<C-w><")
keymap.set("n", "<M-l>", "<C-w>>")
keymap.set("n", "<M-k>", "<C-w>+")
keymap.set("n", "<M-j>", "<C-w>-")

-- Close split
keymap.set("n", "<leader>x", "<C-w>c")
keymap.set("n", "<leader>q", "<C-w>o")

-- Insert --
-- Leave insert mode
keymap.set("i", "jj", "<ESC>")
