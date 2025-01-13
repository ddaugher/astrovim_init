-- Customize Mason plugins

---@type LazySpec
return {
	{
		"zbirenbaum/copilot.lua",
		config = function()
			vim.keymap.set({ "n" }, "<C-p>", ":CopilotChatToggle<cr>", {})
		end,
	},
}
