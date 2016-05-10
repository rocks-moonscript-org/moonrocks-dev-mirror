package = "cifar"
version = "scm-1"

source = {
    url = "git://github.com/pratikac/cifar.git"
}

description = {
    summary = "CIFAR dataset",
    detailed = [[
        ]],
    homepage = "https://github.com/torch/cifar",
    license = "BSD"
}

dependencies = {
    "torch >= 7.0",
    "paths >= 1.0"
}

build = {
    type = "builtin",
    modules = {
        ["cifar.init"] = "init.lua"
    },

    install = {
        lua = {
            -- this is ugly (but this is luarocks)
            ["cifar.data.data_batch_1"] = "data/data_batch_1",
            ["cifar.data.data_batch_2"] = "data/data_batch_2",
            ["cifar.data.data_batch_3"] = "data/data_batch_3",
            ["cifar.data.data_batch_4"] = "data/data_batch_4",
            ["cifar.data.data_batch_5"] = "data/data_batch_5",
            ["cifar.data.test_batch"] = "data/test_batch"
        }
    }
}
