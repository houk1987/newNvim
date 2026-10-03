return {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.env.VIMRUNTIME,
				checkThirdParty = true,
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
