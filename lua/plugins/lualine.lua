return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			config = {
				theme = "dracula",
			},
			sections = {
				lualine_a = {
					{
						"buffers",
					},
				},
			},
		})
	end,
}
