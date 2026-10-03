return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "autopep8", "black" },
			},
		})

		require("conform").setup({
			format_on_save = {
				timeout_ms = 3000,
				lsp_format = "fallback",
			},
		})
	end,
}
