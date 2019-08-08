package = "circle"
version = "scm-0"

description = {
	summary = "Coolest IRC Library Ever",
	homepage = "https://github.com/LBPHacker/lua-circle",
	license = "MIT"
}

source = {
	url = "git+https://github.com/LBPHacker/lua-circle.git"
}

dependencies = {
	"lua >= 5.1",
	"cqueues >= 20161214",
	"luaossl >= 20161208",
}

build = {
	type = "builtin",
	modules = {
		["circle"] = "src/circle.lua",
	}
}
