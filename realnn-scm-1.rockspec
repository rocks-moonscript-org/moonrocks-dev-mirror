package = "realnn"
version = "scm-1"
source = {
   url = "https://github.com/cajal/realnn"
}
description = {
   detailed = [[
This is a code base for implementations of recurrent neural networks (RNN) modeled after the REAL neural networks, giving rise to the RealNN!
]],
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      realnn = "realnn/init.lua",
   }
}
