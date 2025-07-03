local plugins = {}

vim.list_extend(plugins, require("plugins.ui"))
vim.list_extend(plugins, require("plugins.lsp"))
vim.list_extend(plugins, require("plugins.coding"))
vim.list_extend(plugins, require("plugins.completion"))

require("lazy").setup(plugins)
