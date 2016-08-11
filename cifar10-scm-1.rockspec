package = "cifar10"
version = "scm-1"

source = {
	url = "git://github.com/pedropgusmao/cifar10.git"
}

description = {
	summary = "CIFAR-10 Dataset",
	detailed = [[
		    ]],
	homepage = "https://github.com/pedropgusmao/cifar10",
	license = "BSD"
} 

dependencies = {
	"torch >= 7.0",
	"paths >= 1.0",
}
			
build = {
	type = "builtin",
	modules = {
		["cifar10.init"] = "init.lua"
	},
}
