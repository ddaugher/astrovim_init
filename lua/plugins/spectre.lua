return {
	{
		"nvim-pack/nvim-spectre",
		opts = { -- extend the plugin options
			replace_engine = {
				["sed"] = {
					cmd = "sed",
					args = {
						"-i",
						"",
						"-E",
					},
				},
			},
		},
	},
}
