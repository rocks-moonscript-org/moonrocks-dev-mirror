package = "notifykit"
version = "dev-1"
source = {
  url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
  summary = "Lua notification helper library.",
  detailed = [[
    This library is a wrapper around libnotify (using lgi). But it
    also supports notification grouping, notification definition
    using a simple column-based file and loading notifications from
    folders with notifykit-run.
  ]],
  homepage = "https://github.com/daelvn/notifykit",
  license = "MIT/X11"
}
dependencies = {
  "lgi"
}
build = {
  type = "builtin",
  modules = {
    ["notifykit.init"] = "notifykit/init.lua",
    ["notifykit.file"] = "notifykit/file.lua"
  },
  install = {
    bin = {
      ["notifykit-run"] = "notifykit/run.lua"
    }
  }
}
