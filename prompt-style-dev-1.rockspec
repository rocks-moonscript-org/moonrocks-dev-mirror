rockspec_format = "3.0"
package = "prompt-style"
version = "dev-1"

description = {
	summary = "REPL for neovim, luatex, ..., lua plugin for powerlevel10k style prompt and WakaTime time tracking.",
	license = "GPL-3.0",
	homepage = "https://prompt-style-lua.readthedocs.io/",
	labels = {
		"lua",
		"lualatex",
		"luatex",
		"neovim",
		"nerdfont",
		"pandoc",
		"powerlevel10k",
		"prompt",
		"repl",
		"texlua",
		"wakatime",
	},
}

dependencies = {
	"lua>=5.1",
	"platformdirs==0.2.12",
	"luafilesystem==1.9.0",
	"luaprompt==0.10",
	"warna==0.3.5",
	"argparse-temp==0.7.3",
}

source = {
	url = "git+https://github.com/wakatime/prompt-style.lua.git",
	tag = "bf9629d6057dd58b8efade4d304c8d815c997a4c",
}

build = {
	type = "builtin",
}
