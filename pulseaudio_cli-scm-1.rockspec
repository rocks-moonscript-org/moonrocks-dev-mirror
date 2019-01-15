package = "pulseaudio_cli"
version = "scm-1"
source = {
	url = "git://gitlab.com/doronbehar/lua-pulseaudio_cli",
}
description = {
	summary = "Control PulseAudio devices using the command line",
	detailed = "Using DBus, control pulseaudio with multiple sources and sinks",
	homepage = "https://gitlab.com/doronbehar/lua-pulseaudio_cli",
	license = "Apache v2.0"
}
supported_platforms = {
	"linux"
}
dependencies = {
	"lua >= 5.3",
	"pulseaudio_dbus"
}
build = {
	type = "builtin",
	modules = {
		pulseaudio = "pulseaudio.lua"
	},
	install = {
		bin = {
			lpulse = "cli.lua"
		}
	}
}
