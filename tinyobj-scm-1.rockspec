package = "tinyobj"
version = "scm-1"
source = {
	url = "git+https://gitea.tfnux.org/adraenwan/tinyobj.git",
}

description = {
	summary = "tiny object library",
	--detailed = "",
	--homepage = "",
	license = "MIT",
	maintainer = "Adraenwan",
}

dependencies = {
	"lua >= 5.1, < 5.4",
}

build = {
	type = "none",
	install = {
		lua = {
			["tinyobj"] = "tinyobj.lua",
		},
	},
}
