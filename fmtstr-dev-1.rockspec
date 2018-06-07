package = "fmtstr"
version = "dev-1"
source = {
	url = "git://github.com/zgww/fmtstr.git"
}
description = {
	summary = "backquote tempalte string.",
	detailed = "backquote tempalte string. example : local var = 12302\n f'{*var*}' ",
	homepage = "https://github.com/zgww/fmtstr",
	maintainer = "WaterArmy <645789309@qq.com>",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1",
	"lua-resty-template=1.9"
}
build = {
	type = "builtin",
	modules = {
		["fmtstr"]                = "fmtstr.lua",
	}
}
