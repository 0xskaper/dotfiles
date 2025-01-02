return {
	"barrett-ruth/live-server.nvim",
	require("lazy").setup({
		{
			"barrett-ruth/live-server.nvim",
			build = "pnpm add -g live-server",
			cmd = { "LiveServerStart", "LiveServerStop" },
			config = true,
		},
	}),
}
