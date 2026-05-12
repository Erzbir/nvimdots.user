local custom = {}

custom["3rd/image.nvim"] = {
	lazy = true,
	event = "VeryLazy",
	config = require("configs.tool.image"),
}

custom['chomosuke/typst-preview.nvim'] = {
  lazy = false,
  opts = {},
}

return custom
