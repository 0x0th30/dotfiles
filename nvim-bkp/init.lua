-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").pyright.setup({})
require("lspconfig").clojure_lsp.setup({})
require("lspconfig").tsserver.setup({})
