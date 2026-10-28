rockspec_format = "3.0"
package = "jieba"
version = "dev-1"

description = {
	summary = "\231\187\147\229\183\180\229\136\134\232\175\141\239\188\136lua\231\137\136\239\188\137",
	license = "MIT",
	homepage = "https://github.com/neo451/jieba-lua",
}

dependencies = {
	"lua>=5.1",
	"lpeg>=1.1.0",
	"wordmotion.nvim",
}

source = {
	url = "git+https://github.com/neo451/jieba-lua.git",
	tag = "219a342a1bddfe6bd5e87f0182294398e3cc7cf1",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
