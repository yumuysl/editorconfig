-- 搜索trending colorscheme 网站，无须下载后对比
-- 我的最爱: "Mofiqul/dracula.nvim", "everforest-nvim", "gruvbox.nvim", "kanagawa.nvim", "vague.nvim"

-- Mofiqul/dracula.nvim
-- return {
--   -- 添加主题插件
--   { "Mofiqul/dracula.nvim" },  -- 或替换为其他主题如 "folke/tokyonight.nvim" [4](@ref)
--   -- 覆盖 LazyVim 默认主题
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula",  -- 主题名称需与插件匹配
--     },
--   },
-- }

-- neanias/everforest-nvim
return {
  { "neanias/everforest-nvim", priority = 1000 },
  { "LazyVim/LazyVim", opts = { colorscheme = "everforest" } },
}

-- gruvbox
-- return {
--   "ellisonleao/gruvbox.nvim",
--   {
--     "LazyVim/LazyVim",
--     opts = { colorscheme = "gruvbox" },
--   },
-- }

-- kanagawa.nvim
-- return {
--   {
--     "rebelot/kanagawa.nvim",
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "kanagawa",
--     },
--   },
-- }
