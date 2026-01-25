local bind = require("keymap.bind")
local map_callback = bind.map_callback
local mc = require("multicursor-nvim")

return {
	["nx|<leader>mj"] = map_callback(function()
		mc.lineAddCursor(1)
	end):with_desc("MultiCursor: add cursor down"),
	["nx|<leader>mk"] = map_callback(function()
		mc.lineAddCursor(-1)
	end):with_desc("MultiCursor: add cursor up"),

	["nx|<leader>mJ"] = map_callback(function()
		mc.lineSkipCursor(1)
	end):with_desc("MultiCursor: skip down"),
	["nx|<leader>mK"] = map_callback(function()
		mc.lineSkipCursor(-1)
	end):with_desc("MultiCursor: skip up"),

	["nx|<leader>mn"] = map_callback(function()
		mc.matchAddCursor(1)
	end):with_desc("MultiCursor: add next match"),
	["nx|<leader>mN"] = map_callback(function()
		mc.matchAddCursor(-1)
	end):with_desc("MultiCursor: add prev match"),
	["nx|<leader>ms"] = map_callback(function()
		mc.matchSkipCursor(1)
	end):with_desc("MultiCursor: skip next match"),
	["nx|<leader>mS"] = map_callback(function()
		mc.matchSkipCursor(-1)
	end):with_desc("MultiCursor: skip prev match"),

	["nx|<leader>mm"] = map_callback(mc.addCursor):with_desc("MultiCursor: add cursor"),
	["nx|<leader>md"] = map_callback(mc.deleteCursor):with_desc("MultiCursor: delete cursor"),
	["n|<leader>mq"] = map_callback(mc.clearCursors):with_desc("MultiCursor: clear all"),
	["nx|<leader>me"] = map_callback(mc.enableCursors):with_desc("MultiCursor: enable editing"),
}
