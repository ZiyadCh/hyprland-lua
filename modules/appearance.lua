hl.config({

	-- borders
	general = {
		border_size = 6,
		gaps_in = 10,
		gaps_out = 15,
		col = {
			active_border = {
				colors = {
					"rgba(2222ffff)",
					"rgba(aa88ffff)",
					"rgba(00ffffff)",
				},
				angle = 45,
			},
		},
	},
	decoration = {
		rounding = 15,

		-- inner glow
		glow = {
			enabled = 0,
			range = 30,
			color = 0xff5555ff,
			-- render_power = 2,
		},

		-- opacity & blur
		active_opacity = 0.90,
		inactive_opacity = 0.85,

		blur = {
			enabled = true,
			size = 2,
			passes = 3,
		},

		shadow = {
			enabled = true,
			range = 50,
			render_power = 9,
			color = 0xff000000,
		},
	},
})

hl.window_rule({
	name = "opacity",
	match = {
		class = "helium",
	},

	opacity = "0.95 override 0.95 override ",
})
