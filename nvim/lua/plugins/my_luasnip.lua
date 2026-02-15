return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip").config.setup({
        -- 启用片段历史记录
        history = true,
        -- 删除片段时更新动态片段
        update_events = "TextChanged,TextChangedI",
      })

      -- 加载友好片段库
      require("luasnip.loaders.from_vscode").lazy_load()

      -- 加载自定义片段
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
        override_priority = 1000, -- 确保自定义片段优先级更高
      })
    end,
  },
}
