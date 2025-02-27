require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local keymap = vim.keymap


-- 设置主键
vim.g.mapleader = " "

----------------move line-----------------
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
keymap.set("n", "<A-down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
keymap.set("n", "<A-up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
keymap.set("i", "<A-up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap.set("i", "<A-down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap.set("v", "<A-down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
keymap.set("v", "<A-up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

----------------正常模式-----------------
-- 搜索时，leader + nh 取消高亮
keymap.set("n", "<leader>nh", "")

----------------nvim tree-----------------
keymap.set("n", "tr", ":NvimTreeToggle<CR>")

-- save file
keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Move to window using the <ctrl> hjkl keys
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })
keymap.set("n", "<C-left>", "<C-w>h", { desc = "Go to left window", remap = true })
keymap.set("n", "<C-down>", "<C-w>j", { desc = "Go to lower window", remap = true })
keymap.set("n", "<C-up>", "<C-w>k", { desc = "Go to upper window", remap = true })
keymap.set("n", "<C-right>", "<C-w>l", { desc = "Go to right window", remap = true })

-- lazy
keymap.set("n", "<leader>l", "<cmd>Lazy<cr>")

-- mason
keymap.set("n", "<leader>m", "<cmd>Mason<cr>")

-- new file
keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- tab(bufferline)
keymap.set("n", "<tab><right>", "<cmd>BufferLineCycleNext<cr>")
keymap.set("n", "<tab><left>", "<cmd>BufferLineCyclePrev<cr>")
keymap.set("n", "Q", "<cmd>bdelete %<cr>")

-- run
-- keymap.set("n", "<F5>", "<cmd>lua run()<cr>")

-- forbid capslock
keymap.set("n", "W", "<cmd>w<cr>")
-- keymap.set("n", "Q", "<cmd>q<cr>")
vim.cmd([[cnoreabbrev Q q]])