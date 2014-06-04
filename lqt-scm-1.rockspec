package = "lqt"
version = "scm-1"

source = {
   url = "git://github.com/mkottman/lqt.git"
}

description = {
  summary = "Lua binding to the Qt framework",
  detailed = [[
     lqt is a Lua binding to the Qt framework. It is an automated binding
     generated from the Qt headers, and covers almost all classes and
     methods from supported Qt modules.
  ]],
  license = "MIT/X11",
}

build = {
  type = "cmake",
  variables = {
     CMAKE_INSTALL_PREFIX="$(PREFIX)",
  },
  install = {
     lib = {
        qtcore        = "lib/qtcore.so",
        qtgui         = "lib/qtgui.so",
        qtnetwork     = "lib/qtnetwork.so",
        qtopengl      = "lib/qtopengl.so",
        qtscript      = "lib/qtscript.so",
        qtsql         = "lib/qtsql.so",
        qtsvg         = "lib/qtsvg.so",
        qtuitools     = "lib/qtuitools.so",
        qtwebkit      = "lib/qtwebkit.so",
        qtxml         = "lib/qtxml.so",
        qtxmlpatterns = "lib/qtxmlpatterns.so",
     }
  }
}
