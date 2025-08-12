return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- 显示所有文件（包括隐藏文件）
        hide_dotfiles = false, -- 显示点文件
        hide_gitignored = false, -- 显示被 .gitignore 忽略的文件
      },
      -- 可选：其他自定义配置
      follow_current_file = { enabled = true }, -- 自动定位当前文件
    },
  },
}
