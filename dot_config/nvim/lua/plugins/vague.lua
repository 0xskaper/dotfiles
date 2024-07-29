return {
	"vague2k/vague.nvim",
	config = function()
		require("vague").setup({
			transparent = false,
			style = {
				boolean = "none",
				number = "none",
				float = "none",
				error = "none",
				comments = "italic",
				conditionals = "none",
				functions = "bold",
				headings = "bold",
				operators = "none",
				strings = "italic",
				variables = "none",

				-- keywords
				keywords = "bold",
				keyword_return = "bold",
				keywords_loop = "loop",
				keywords_label = "loop",
				keywords_exception = "loop",

				-- builtin
				builtin_constants = "none",
				builtin_functions = "bold",
				builtin_types = "none",
				builtin_variables = "none",
			},
			colors = {
				colors = {
					bg = "#0c0e15",
					fg = "#ffffff",
					floatBorder = "#878787",
					line = "#282830",
					comment = "#6c7986",
					builtin = "#67b7a4",
					func = "#67b7a4",
					string = "#fc6a5d",
					number = "#d0bf69",
					property = "#a167e6",
					constant = "#a167e6",
					parameter = "#ffffff",
					visual = "#363738",
					error = "#d2788c",
					warning = "#e6be8c",
					hint = "#8ca0dc",
					operator = "#96a3b2",
					keyword = "#fc5fa3",
					type = "#5dd8ff",
					search = "#465362",
					plus = "#8faf77",
					delta = "#e6be8c",
				},
			},
		})
	end,
}
