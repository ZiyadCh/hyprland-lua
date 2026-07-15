------------------------------------------------------------
-- VARIABLES
------------------------------------------------------------

local mod = "SUPER"

------------------------------------------------------------
-- APPLICATIONS
------------------------------------------------------------

hl.bind(mod .. " + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mod .. " + BACKSPACE", hl.dsp.exec_cmd("wlogout -b 4"))

hl.bind(mod .. " + E", hl.dsp.exec_cmd("kitty yazi"))
hl.bind(mod .. " + T", hl.dsp.exec_cmd("kitty btop"))

------------------------------------------------------------
-- WINDOWS
------------------------------------------------------------

hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + BACKSLASH", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())

------------------------------------------------------------
-- FOCUS
------------------------------------------------------------

hl.bind(mod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + L", hl.dsp.focus({ direction = "right" }))

------------------------------------------------------------
-- MOVE WINDOWS
------------------------------------------------------------

hl.bind(mod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
hl.bind(mod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

------------------------------------------------------------
-- WORKSPACES
------------------------------------------------------------

for i = 1, 9 do
	hl.bind(mod .. " + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind(mod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

hl.bind("ALT + A", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("ALT + D", hl.dsp.focus({ workspace = "e+1" }))

------------------------------------------------------------
-- AUDIO
------------------------------------------------------------

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("swayosd-client --output-volume raise"),
	{ locked = true, repeating = true }
)

hl.bind(
	"CTRL + SHIFT + E",
	hl.dsp.exec_cmd("swayosd-client --output-volume raise"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("swayosd-client --output-volume lower"),
	{ locked = true, repeating = true }
)

hl.bind(
	"CTRL + SHIFT + Q",
	hl.dsp.exec_cmd("swayosd-client --output-volume lower"),
	{ locked = true, repeating = true }
)

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true })

------------------------------------------------------------
-- BRIGHTNESS
------------------------------------------------------------

hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd("swayosd-client --brightness raise"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd("swayosd-client --brightness lower"),
	{ locked = true, repeating = true }
)

------------------------------------------------------------
-- MOUSE
------------------------------------------------------------

hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

------------------------------------------------------------
-- LAYOUTS
------------------------------------------------------------

hl.bind("SUPER + tab", function()
	local layouts = { "scrolling", "dwindle" }
	local workspace = hl.get_active_workspace()
	if hl.get_active_special_workspace() then
		workspace = hl.get_active_special_workspace()
	end

	local next_layout = "dwindle"

	if not workspace then
		return
	end

	for i = 1, #layouts do
		if layouts[i] == workspace.tiled_layout then
			local next_layout_idx = (i % #layouts) + 1
			next_layout = layouts[next_layout_idx]
			break
		end
	end

	if workspace.special then
		hl.workspace_rule({ workspace = tostring(workspace.name), layout = next_layout })
	else
		hl.workspace_rule({ workspace = tostring(workspace.id), layout = next_layout })
	end
end)

hl.bind("ALT + E", hl.dsp.layout("colresize +0.2"))
hl.bind("ALT + Q", hl.dsp.layout("colresize -0.2"))

------------------------------------------------------------
-- SCRIPTS
------------------------------------------------------------

hl.bind(mod .. " + C", hl.dsp.exec_cmd("$HOME/.local/bin/webapps-rofi"))
hl.bind(mod .. " + P", hl.dsp.exec_cmd("$HOME/.local/bin/chwall.sh"))
hl.bind(mod .. " + O", hl.dsp.exec_cmd("$HOME/.local/bin/theme.sh"))
