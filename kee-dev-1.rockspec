rockspec_format = "3.0"
package = "kee"
version = "dev-1"
source = {
  url = "git+https://github.com/MunifTanjim/kee.git",
  tag = nil,
}
description = {
  summary = "Do amazing things with Keys...",
  detailed = [[
    Do amazing things with Keys...
  ]],
  license = "MIT",
  homepage = "https://github.com/MunifTanjim/kee",
  issues_url = "https://github.com/MunifTanjim/kee/issues",
  maintainer = "Munif Tanjim (https://muniftanjim.dev)",
  labels = { "evdev", "input" },
}
build = {
  type = "builtin",
}
dependencies = {
  "lua-evdev ~> 0.0",
}
build_dependencies = {
  "luacheck ~> 0.25",
}
supported_platforms = {
  "linux",
}
