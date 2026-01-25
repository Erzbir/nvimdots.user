local custom = {}

custom["jake-stewart/multicursor.nvim"] = {
	lazy = true,
	event = {"CursorHold", "CursorHoldI"},
	config = require("configs.editor.multicursor")
}

custom["kylechui/nvim-surround"] = {
	lazy = true,
	event = { "CursorHold", "CursorHoldI" },
	config = require("configs.editor.nvim-surround")
}

return custom
