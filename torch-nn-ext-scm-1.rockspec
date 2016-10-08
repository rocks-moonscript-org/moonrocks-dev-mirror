package = "torch-nn-ext"
version = "scm-1"

source = {
	url = "git://github.com/anoidgit/Torch-nn-ext",
	tag = "master"
}

description = {
	summary = "some extention to torch and nn package",
	detailed = [[
A library to based on torch.
	]],
	homepage = "https://github.com/anoidgit/Torch-nn-ext",
	license = "GPL"
}

dependencies = {
	"torch >= 7.0",
	"nn >= 1.0"
}

build = {
	type = "builtin",
	modules = {
		PartialNN = "PartialNN.lua",
		SeqDropout = "SeqDropout.lua",
		getgcnn = "getgcnn.lua",
		getmaxout = "getmaxout.lua",
		getresmodel = "getresmodel.lua",
		vecLookup = "vecLookup.lua",
		maskZerovecLookup = "maskZerovecLookup.lua"
	}
}
