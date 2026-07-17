hl.config({

	-- borders
	general = {
		border_size = 6,
		gaps_in = 10,
		gaps_out = 15,
		col = {
			active_border = {
				colors = {
					"rgba(ffffffff)", -- bright center
					"rgba(63cfffff)", -- cyan
					"rgba(4d7fffff)", -- blue
					"rgba(aa78ffff)", -- violet
					"rgba(ff4abaff)", -- pink
					"rgba(ffb347ff)", -- warm highlight
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
			color = 0xff00aaff,
			-- render_power = 2,
		},

		-- opacity & blur
		active_opacity = 0.85,
		inactive_opacity = 0.65,

		blur = {
			enabled = true,
			size = 2,
			passes = 4,
			noise = 0,
			vibrancy = 1,
			contrast = 2,
		},

		shadow = {
			enabled = true,
			range = 30,
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
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprctl setcursor Qogir-light 32")
end)
