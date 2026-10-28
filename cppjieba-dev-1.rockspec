rockspec_format = "3.0"
package = "cppjieba"
version = "dev-1"

description = {
	summary = "\229\159\186\228\186\142jieba-lua\231\154\132neovim\228\184\173\230\150\135\232\175\141\232\183\179\232\189\172",
	license = "GPL-3.0",
	homepage = "https://github.com/neo451/jieba.nvim",
}

dependencies = {
	"lua>=5.1",
	"vim",
	"wordmotion.nvim",
}

build_dependencies = {
	"luanativeobjects",
	"luarocks-build-xmake",
}

source = {
	url = "git+https://github.com/neo451/jieba.nvim.git",
	tag = "c27eb15a025f3d824c3378c5a66013818b4c3e38",
}

build = {
	type = "xmake",
	copy_directories = {
		"plugin",
	},
}
