package = "rockexp"
version = "dev-2"
source = {
   url = "git+http://git.znuogame.com/wangyi/rockexp.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "MIT/X11"
}
build = {
   type = "builtin",
   modules = {
     ["ptb.greeting"] = "lua/greeting.lua"
   }
}

dependencies = {
   "penlight >= 1.7.0"
}
