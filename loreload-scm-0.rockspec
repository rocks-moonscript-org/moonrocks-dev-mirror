package = "loreload"
version = "scm-0"
rockspec_format = "3.0"
source = {
   url = "git+https://codeberg.org/sewbacca/loreload"
}
description = {
	homepage = "https://codeberg.org/sewbacca/loreload",
	summary = "A hotreloader for LÖVE2D and LÖVR",
	license = "MIT",
}
build = {
   type = "builtin",
   modules = {
      loreload = "loreload.lua"
   }
}
