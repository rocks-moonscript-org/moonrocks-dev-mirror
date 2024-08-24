
package = 'file-util-tempdir'
version = 'scm-1'
source = {
  url = "https://github.com/huakim/lua-file-util-tempdir/archive/refs/heads/"..version..".zip".."#/"..package.."-"..version..'.zip',
 }
description = {
  detailed = "  ",
  homepage = "https://github.com/huakim/lua-file-util-tempdir",
  license = "LGPL",
  summary = "Get OS temporary directory",
 }
build = {
  modules = {
   ["file.util.tempdir"] = "file/util/tempdir.lua",
  },
  type = "builtin",
 }
dependencies = {
  "lua >= 5.1",
  "get_os_name",
  "luafilesystem",
  "luaposix",
 }
