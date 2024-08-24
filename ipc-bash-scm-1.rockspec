rockspec_format = '3.0'
package = 'ipc-bash'
version = 'scm-1'

source = {
  url = "https://codeload.github.com/huakim/lua-ipc-bash/zip/refs/heads/"..version.."#/lua-"..package..'-'..version..'.zip',
 }
description = {
  detailed = "  ",
  homepage = "https://github.com/huakim/lua-ipc-bash",
  license = "LGPL",
  summary = "Inter process communications between shell session and lua script",
 }
build = {
  modules = {
   ["ipc.bash"] = "ipc/bash.lua",
  },
  type = "builtin",
 }
dependencies = {
  "lua >= 5.1",
  'luaposix',
  'subprocess',
  'file-util-tempdir',
  'lua-path',
  'luafilesystem',
 }
