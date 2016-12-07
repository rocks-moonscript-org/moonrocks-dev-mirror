package = "sarnn"
version = "scm-1"

source = {
	url = "git://github.com/anoidgit/Simple-RNN",
	tag = "master"
}

description = {
	summary = "A fast, simple rnn library that based on torch and fit torch standard used for neural machine translation and the other task, This package may include LSTM, GRU, FastLSTM, RHN, LSTMP, etc.",
	detailed = [[
A library to based on torch.
	]],
	homepage = "https://github.com/anoidgit/Simple-RNN",
	license = "GPL"
}

dependencies = {
	"torch >= 7.0",
	"nn >= 1.0"
}

build = {
	type = "builtin",
	modules = {
		aSeqTanh = "dep/aSeqTanh.lua",
		aSeqSigmoid = "dep/aSeqSigmoid.lua",
		aSeqSoftMax = "dep/aSeqSoftMax.lua",
		aBstractBase = "aBstractBase.lua",
		aBstractSeq = "aBstractSeq.lua",
		aBstractStep = "aBstractStep.lua",
		aGRU = "aGRU.lua",
		aLSTM = "aLSTM.lua",
		aSeqBiLinear = "dep/aSeqBiLinear.lua",
		aTtention = "dep/aTtention.lua"
	}
}