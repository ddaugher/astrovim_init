-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.elixir-phoenix" },
	{ import = "astrocommunity.test.vim-test" },
	{ import = "astrocommunity.editing-support.vim-visual-multi" },
	{ import = "astrocommunity.colorscheme.nord-nvim" }, -- import/override with your plugins folder
	{ import = "astrocommunity.utility.hover-nvim" }, -- import/override with your plugins folder
	{ import = "astrocommunity.completion.cmp-nvim-lua" }, -- import/override with your plugins folder
	{ import = "astrocommunity.terminal-integration.vim-tmux-navigator" }, -- import/override with your plugins folder
	{ import = "astrocommunity.editing-support.auto-save-nvim" }, -- import/override with your plugins folder
	{ import = "astrocommunity.search.nvim-spectre" }, -- import/override with your plugins folder
}
