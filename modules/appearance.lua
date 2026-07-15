hl.config({

	-- borders
	general = {
		border_size = 5,
		gaps_in = 7,
		gaps_out = 15,
		col = {
			active_border = {
				colors = {
					"rgba(aa00ffff)",
					"rgba(00000000)",
					"rgba(aaaaffff)",
				},
				angle = 45,
			},
		},
	},
	decoration = {
		rounding = 0,

		glow = {
			enabled = 0,
			range = 20,
			color = 0xff9955ff,
		},

		-- opacity & blur
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
