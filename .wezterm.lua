local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- 基础设置
config.default_prog = { "powershell.exe" }
config.default_cwd = "F:/code/myProjects"
config.font = wezterm.font("DejaVuSansM Nerd Font Mono", { weight = "Bold" })
config.font_size = 12
config.window_background_opacity = 1

-- 主题配置
config.color_scheme = "Everforest Dark (Gogh)"
-- config.color_scheme = "Birds Of Paradise (Gogh)"
-- config.color_scheme = "X::Erosion (terminal.sexy)" --防偷窥

-- 标签栏与分屏
config.hide_tab_bar_if_only_one_tab = true -- 仅一个标签时隐藏标签栏
config.enable_tab_bar = true

local launch_path_menu = {
	{
		label = "express项目",
		args = { "powershell.exe" },
		cwd = "F:/code/myProjects/express/Developer/",
	},
	{
		label = "react项目",
		args = {
			"powershell.exe",
		},
		cwd = "F:/code/myProjects/react/",
	},
	{
		label = "LazyVim配置",
		args = { "powershell.exe" },
		cwd = "C:/Users/28625/AppData/Local/nvim",
	},
}

config.launch_menu = launch_path_menu

config.keys = {
	-- 新建标签页
	{ key = "n", mods = "CTRL", action = wezterm.action.SpawnTab("DefaultDomain") },

	-- 关闭标签页：避免与下面到底分屏控制
	-- { key = 'w', mods = 'CTRL', action = wezterm.action.CloseCurrentTab { confirm = false } },

	-- 标签页间切换
	{ key = "Tab", mods = "CTRL", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTabRelative(-1) },

	-- 分屏控制
	{ key = "w", mods = "ALT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "a", mods = "ALT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "x", mods = "ALT", action = wezterm.action.CloseCurrentPane({ confirm = true }) },

	-- 窗格切换
	{ key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "r", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "u", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "d", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },

	-- 快速选择
	{ key = "q", mods = "CTRL|SHIFT", action = wezterm.action.QuickSelect },

	-- 快速打开Tab菜单
	{ key = "m", mods = "CTRL", action = wezterm.action.ShowLauncher },
}

--滚动条和回滚大小
config.enable_scroll_bar = true
config.scrollback_lines = 2000

--配置片段：显示当前工作目录
wezterm.on("update-right-status", function(window, pane)
	local tab = window:active_tab()
	local tab_title = tab.tab_title
	if tab_title == "" then
		tab_title = pane.title
	end
	window:set_right_status(wezterm.format({
		{ Text = tab_title },
	}))
end)

--配置片段：背景图片
config.window_background_image = "C:/yjwcreate/photo/e82b0a38374a828032885f223608b35e--3321552761.jpg"
config.window_background_image_hsb = {
	brightness = 0.2, -- 降低亮度避免干扰文字
	hue = 1.0,
	saturation = 1.0,
}

return config
