hl.config({

	-- borders
	general = {
		border_size = 0,
		gaps_in = 7,
		gaps_out = 15,
		col = {
			active_border = {
				colors = {
					"rgba(0000ffff)",
				},
				angle = 45,
			},
		},
	},
	decoration = {
		rounding = 0,

		-- inner glow
		glow = {
			enabled = 1,
			range = 30,
			color = 0xff7722ff,
			-- render_power = 2,
		},

		-- opacity & blur
		active_opacity = 0.85,
		inactive_opacity = 0.85,

		blur = {
			enabled = true,
			size = 2,
			passes = 4,
		},

		shadow = {
			enabled = true,
			range = 30,
			render_power = 3,
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
