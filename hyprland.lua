------------------------------------------------------------
-- MODULES
------------------------------------------------------------

require("modules.monitors")
require("modules.autostart")
require("modules.animations")
require("modules.appearance")
require("modules.keybinds")
require("modules.webapps")

hl.config({
	general = {
		layout = "dwindle",
	},
	input = {
		touchpad = {
			natural_scroll = true,
			disable_while_typing = true,
		},
	},
})
