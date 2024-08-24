
package = 'get_os_name'
version = 'scm-1'
source = {
  url = "git://github.com/huakim/lua_get_os_name.git",
 }
description = {
  detailed = "  ",
  homepage = "https://github.com/huakim/lua_get_os_name",
  license = "LGPL",
  summary = "Get OS name and architecture",
 }
build = {
  modules = {
   get_os_name = "get_os_name.lua",
  },
  type = "builtin",
 }
dependencies = {
  "lua >= 5.1",
  "uname"
 }
