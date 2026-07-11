local custom = {}

custom["3rd/image.nvim"] = {
	lazy = true,
	event = "VeryLazy",
	config = require("configs.tool.image"),
}

custom["chomosuke/typst-preview.nvim"] = {
	lazy = false,
	config = require("configs.tool.typst-preview"),
}

return custom
