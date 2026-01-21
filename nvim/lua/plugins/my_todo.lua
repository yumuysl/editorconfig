return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- 声明依赖项
    opts = { -- 插件配置项（opts 字段）
      keywords = { -- 自定义关键词（保留原有配置）
        -- 示例：扩展 REVIEW 类型
        TODO = { icon = "", color = "#98ded3", alt = { "TODO，待实现功能" } },
        FIX = { icon = "", color = "#f59292", alt = { "FIX，待修复的BUG" } },
        WARN = { icon = "", color = "#f0e3c4", alt = { "WARN，潜在风险提示" } },
        HACK = { icon = " ", color = "#6c5b7b", alt = { "HACK" } },
        PERF = { icon = "", color = "#98FB98", alt = { "PERF，性能优化" } },
        TEST = { icon = "⏲ ", color = "#FFDAB9", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      -- 显式指定 rg 路径（Windows）
      -- cmd = "D:\\ripgrep14.1.1\\rg.exe",
      -- 其他配置（可选）
      -- highlight = {
      --   before = "bg", -- 注释符背景高亮
      --   pattern = [[\b(KEYWORDS)\s*:]], -- 匹配关键词 + 英文冒号
      -- },
    },
  },
}
