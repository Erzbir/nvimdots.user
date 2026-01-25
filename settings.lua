-- Please check `lua/core/settings.lua` to view the full list of configurable settings
local settings = {}

settings["colorscheme"] = "catppuccin"
settings["background"] = "dark"

settings["use_ssh"] = true
settings["use_chat"] = false
settings["use_copilot"] = false
settings["format_on_save"] = false
settings["format_modifications_only"] = true

settings["disabled_plugins"] = {
	"dstein64/nvim-scrollview",
	"github/copilot.vim",
	"github/copilot-cmp",
	"m4xshen/autoclose.nvim",
}

return settings
