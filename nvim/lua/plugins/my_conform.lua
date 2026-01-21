-- 使用conform.nvim集成Prettier作为格式化引擎

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" }, -- 指定文件类型对应的格式化器
      typescript = { "prettier" },
      vue = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      react = { "prettier" },
      markdown = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      javascriptreact = { "prettier" },
      jsonc = { "prettier" },
      scss = { "prettier" },
      less = { "prettier" },
      postcss = { "prettier" },
      yaml = { "prettier" },
    },
    format_on_save = { -- 保存时自动格式化
      timeout_ms = 500,
      lsp_fallback = true, -- 若格式化失败则回退到 LSP
    },
  },
}
