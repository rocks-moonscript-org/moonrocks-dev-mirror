package = "gobo-awesome-light"
version = "scm-1"
source = {
   url = "git+https://github.com/gobolinux/gobo-awesome-light.git"
}
description = {
   detailed = "A backlight widget for Awesome WM, designed for [http://gobolinux.org](GoboLinux).",
   homepage = "https://github.com/gobolinux/gobo-awesome-light",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["gobo.awesome.light"] = "gobo/awesome/light.lua"
   }
}
