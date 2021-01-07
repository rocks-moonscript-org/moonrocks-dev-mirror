
package = "lua-s7iso"
version = "scm-1"
source = {
  url = "git://github.com/chrislo1976/lua-s7iso"
}
description = {
    summary = "A lua module for communication to Siemens S7-PLCs",
    detailed = [[
    ]],
    homepage = "https://github.com/chrislo1976/lua-s7iso",
    license = "MIT",
    maintainer = "Christian Lorenz"
}
dependencies = {
    "lua >= 5.3"
}
build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
