------------------------------------------------------------
-- APPEARANCE
------------------------------------------------------------

hl.config({
	general = {
		border_size = 5,
		col = {
			active_border = {
				colors = {
					"rgba(89b4faff)",
					"rgba(aa00ffff)",
				},
				angle = 0,
			},
		},
	},
	decoration = {
		rounding = 0,

		active_opacity = 0.95,
		inactive_opacity = 0.85,

		blur = {
			enabled = true,
			size = 5,
			passes = 2,
			vibrancy = 0.2,
		},

		shadow = {
			enabled = true,
			range = 20,
			render_power = 3,
			color = 0xaa000000,
		},
	},
})
