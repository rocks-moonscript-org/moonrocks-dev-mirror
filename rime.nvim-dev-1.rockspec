rockspec_format = "3.0"
package = "rime.nvim"
version = "dev-1"

description = {
	summary = "\227\132\147 rime for neovim \238\159\133",
	license = "GPL-3.0",
	homepage = "https://rime-nvim.readthedocs.io/",
	labels = {
		"lua",
		"neovim",
		"rime",
		"vim",
		"xmake",
	},
}

dependencies = {
	"lua>=5.1",
	"ime>=0.0.8",
	"platformdirs",
	"lua-cjson",
}

build_dependencies = {
	"luanativeobjects",
	"luarocks-build-xmake",
}

source = {
	url = "git+https://github.com/rimeinn/rime.nvim.git",
	tag = "e14f105671511f94edcf9291faa1f9efa5108f02",
}

build = {
	type = "xmake",
	install = {
		bin = {
			rime = "bin/rime",
		},
	},
	copy_directories = {
		"after",
	},
}
