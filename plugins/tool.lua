local custom = {}

custom["3rd/image.nvim"] = {
	lazy = true,
	event = "VeryLazy",
	config = require("configs.tool.image"),
}

return custom
