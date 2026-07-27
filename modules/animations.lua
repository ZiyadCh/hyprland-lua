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
hl.curve("smoothslow", {
	type = "spring",
	mass = 3.2,
	stiffness = 250,
	dampening = 40,
})

------------------------------------------------------------
-- ANIMATIONS
------------------------------------------------------------

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 5,
	spring = "smoothslow",
	style = "slide",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 2.4,
	spring = "smoothslow",
	style = "slidefade ",
})

hl.animation({
	leaf = "borderangle",
	enabled = true,
	speed = 40,
	bezier = "linear",
	style = "loop",
})
