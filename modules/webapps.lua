------------------------------------------------------------
-- WEB APPS
------------------------------------------------------------

local mod = "SUPER"

hl.bind(mod .. " + B", hl.dsp.exec_cmd("helium --password-store=basic"))

hl.bind(mod .. " + Y", hl.dsp.exec_cmd("helium --password-store=basic --app=https://youtube.com"))

hl.bind(mod .. " + I", hl.dsp.exec_cmd("helium --password-store=basic --app=https://intranet.youcode.ma"))

hl.bind(mod .. " + G", hl.dsp.exec_cmd("helium --password-store=basic --app=https://gemini.google.com"))

hl.bind(mod .. " + ALT + G", hl.dsp.exec_cmd("helium --password-store=basic --app=https://github.com"))

hl.bind(mod .. " + ALT + M", hl.dsp.exec_cmd("helium --password-store=basic --app=https://mail.google.com"))

hl.bind(mod .. " + ALT + N", hl.dsp.exec_cmd("helium --password-store=basic --app=https://nepu.to"))
