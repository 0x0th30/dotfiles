return {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- Neovim uses LuaJIT
      },
      diagnostics = {
        globals = { "vim" }, -- Don't warn about 'vim' being undefined
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true), -- Include runtime files
        checkThirdParty = false, -- Disable 3rd-party checks
      },
      telemetry = {
        enable = false, -- Disable telemetry
      },
    },
  },
}

