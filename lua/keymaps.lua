-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--
--  Keymap to enter normal mode easier
vim.keymap.set("i", "jk", "<Esc>")

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<leader>o", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "<leader>i", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- These mappings control the size of splits (height and width)
vim.keymap.set("n", "<M-.>", "<C-w>5<")
vim.keymap.set("n", "<M-,>", "<C-w>5>")
vim.keymap.set("n", "<M-k>", "<C-w>+")
vim.keymap.set("n", "<M-j>", "<C-w>-")

-- Center cursor on page jump
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { remap = true })
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { remap = true })

-- Paste but keep word in register
vim.keymap.set("n", "<leader>p", '"_dP', { desc = "Paste over word but keep in register" })

-- Take s key away from default, give it to mini.surround
vim.keymap.set({ "n", "x" }, "s", "<Nop>")

-- vim: ts=2 sts=2 sw=2 et
