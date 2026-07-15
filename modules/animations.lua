------------------------------------------------------------
-- ANIMATIONS
------------------------------------------------------------

hl.config({
	animations = {
		enabled = true,
	},
})

------------------------------------------------------------
-- CURVES
------------------------------------------------------------

hl.curve("easeOutCirc", {
	type = "bezier",
	points = {
		{ 0, 0.55 },
		{ 0.45, 1 },
	},
})

------------------------------------------------------------
-- SPRINGS
------------------------------------------------------------

hl.curve("easy", {
	type = "spring",
	mass = 1,
	stiffness = 24,
	dampening = 10,
})

------------------------------------------------------------
-- ANIMATIONS
------------------------------------------------------------

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 5,
	spring = "easy",
	style = "slide",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 1.94,
	spring = "easy",
	style = "slidefade",
})

hl.animation({
	leaf = "border",
	enabled = true,
	speed = 80,
	bezier = "easeOutCirc",
})
hl.animation({
	leaf = "borderangle",
	enabled = true,
	speed = 80,
	bezier = "easeOutCirc",
	style = "loop",
})
