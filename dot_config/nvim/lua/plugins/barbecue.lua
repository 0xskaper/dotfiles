return {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	},
	opts = {
		-- configurations go here
	},
	config = function()
		require("barbecue").setup({
			create_autocmd = false, -- prevent barbecue from updating itself automatically
			theme = {
				-- this highlight is used to override other highlights
				-- you can take advantage of its `bg` and set a background throughout your winbar
				-- (e.g. basename will look like this: { fg = "#c0caf5", bold = true })
				normal = { fg = "#fbf1c7" },

				-- these highlights correspond to symbols table from config
				ellipsis = { fg = "#fbf1c7" },
				separator = { fg = "#fbf1c7" },
				modified = { fg = "#fbf1c7" },

				-- these highlights represent the _text_ of three main parts of barbecue
				dirname = { fg = "#fbf1c7" },
				basename = { bold = true },
				context = {},

				-- these highlights are used for context/navic icons
				context_file = { fg = "#fbf1c7" },
				context_module = { fg = "#fbf1c7" },
				context_namespace = { fg = "#fbf1c7" },
				context_package = { fg = "#fbf1c7" },
				context_class = { fg = "#fbf1c7" },
				context_method = { fg = "#fbf1c7" },
				context_property = { fg = "#fbf1c7" },
				context_field = { fg = "#fbf1c7" },
				context_constructor = { fg = "#fbf1c7" },
				context_enum = { fg = "#fbf1c7" },
				context_interface = { fg = "#fbf1c7" },
				context_function = { fg = "#fbf1c7" },
				context_variable = { fg = "#fbf1c7" },
				context_constant = { fg = "#fbf1c7" },
				context_string = { fg = "#fbf1c7" },
				context_number = { fg = "#fbf1c7" },
				context_boolean = { fg = "#fbf1c7" },
				context_array = { fg = "#fbf1c7" },
				context_object = { fg = "#fbf1c7" },
				context_key = { fg = "#fbf1c7" },
				context_null = { fg = "#fbf1c7" },
				context_enum_member = { fg = "#fbf1c7" },
				context_struct = { fg = "#fbf1c7" },
				context_event = { fg = "#fbf1c7" },
				context_operator = { fg = "#fbf1c7" },
				context_type_parameter = { fg = "#fbf1c7" },
			},
		})

		vim.api.nvim_create_autocmd({
			"WinScrolled", -- or WinResized on NVIM-v0.9 and higher
			"BufWinEnter",
			"CursorHold",
			"InsertLeave",

			-- include this if you have set `show_modified` to `true`
			-- "BufModifiedSet",
		}, {
			group = vim.api.nvim_create_augroup("barbecue.updater", {}),
			callback = function()
				require("barbecue.ui").update()
			end,
		})
	end,
}
