-- nvim-lspconfig和eslint_lsp

return {
  "neovim/nvim-lspconfig",
  opts = function(_, default_opts)
    default_opts.servers.eslint = {
      settings = {
        validate = "on", -- 启用实时校验
        codeActionOnSave = { -- 保存时自动修复
          enable = true,
          mode = "all",
        },
        useFlatConfig = true, -- 支持 ESLint v9+ 的 Flat Config
      },
      filetypes = { -- 覆盖支持的文件类型
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "react",
        "astro",
        "lua",
      },
    }
    return default_opts
  end,
}
