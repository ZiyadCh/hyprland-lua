------------------------------------------------------------
-- AUTOSTART
------------------------------------------------------------

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh")
	hl.exec_cmd("swayosd-libinput-backend")
	hl.exec_cmd("swayosd-server")
	hl.exec_cmd("swaybg -i $HOME/.config/mango/wallpapers/aurora.png")
	hl.exec_cmd(
		" mpvpaper -o 'no-audio loop video-unscaled=no --panscan=1.0' eDP-1 $HOME/.config/mango/live-wallpapers/samurai-anime-boy-koi-in-sword-moewalls-com.mp4"
	)
end)
