local custom = {}

custom["mfussenegger/nvim-jdtls"] = {
	lazy = true,
	ft = "java",
	config = require("configs.lang.jdtls"),
}

return custom
