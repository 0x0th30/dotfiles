vim.g.mapleader = " "
local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Tree" })

map({ "n", "v" }, "<C-s>", "<cmd>w<cr>", { noremap = true, silent = true })
map({ "n", "v" }, "<leader>qq", "<cmd>qa!<cr>", { noremap = true, silent = true })

map({ "n", "v" }, "<leader>aia", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
map({ "n", "v" }, "<leader>ait", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
map({ "v" }, "aip", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

map("n", "<leader>ai", ":CodeCompanionPrompt<CR>", { desc = "Ask AI" })
map("v", "<leader>ai", ":'<,'>CodeCompanionPrompt<CR>", { desc = "Ask AI on selection" })
