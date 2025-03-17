-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.colorscheme.nord-nvim" }, -- import/override with your plugins folder
	{ import = "astrocommunity.completion.cmp-nvim-lua" }, -- import/override with your plugins folder
	{ import = "astrocommunity.completion.copilot-lua-cmp" }, -- import/override with your plugins folder
	{ import = "astrocommunity.editing-support.auto-save-nvim" }, -- import/override with your plugins folder
	{ import = "astrocommunity.editing-support.copilotchat-nvim" }, -- import/override with your plugins folder
	{ import = "astrocommunity.editing-support.vim-visual-multi" },
	{ import = "astrocommunity.pack.elixir-phoenix" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.search.nvim-spectre" }, -- import/override with your plugins folder
	{ import = "astrocommunity.terminal-integration.vim-tmux-navigator" }, -- import/override with your plugins folder
	{ import = "astrocommunity.test.vim-test" },
	{ import = "astrocommunity.utility.hover-nvim" }, -- import/override with your plugins folder
}
