package = "lifter_puller"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/Freemasen/lifter_puller",
   branch = "mvp"
}
description = {
   summary = "An xml pull parser in pure lua",
   detailed = "An xml pull parser in pure lua",
   homepage = "https://github.com/FreeMasen/lifter_puller",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      lifter_puller = "lifter_puller/init.lua",
      ["lifter_puller.buffer"] = "lifter_puller/buffer.lua",
      ["lifter_puller.event"] = "lifter_puller/event.lua",
      ["lifter_puller.puller"] = "lifter_puller/puller.lua"
   }
}
