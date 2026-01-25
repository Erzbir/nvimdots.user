local kind = require("modules.utils.icons").get("kind")

return {
	spec = {
		{ "<leader>m", group = kind.Unit .. " MultiCursor" },
	},
}
