package = "lrc"
version = "scm-0"
source = {
   url = "https://codeberg.org/lrocket/lrc/archive/main.zip",
   dir = "lrc"
}
description = {
   summary = "A compiler for the Lua Programming Language",
   homepage = "https://codeberg.org/lrocket/lrc",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["lrocket.build.executable-c"] = "lrocket/build/executable-c.lua",
      ["lrocket.build.executable"] = "lrocket/build/executable.lua",
      ["lrocket.build.init"] = "lrocket/build/init.lua",
      ["lrocket.build.lua"] = "lrocket/build/lua.lua",
      ["lrocket.build.shared-c"] = "lrocket/build/shared-c.lua",
      ["lrocket.build.shared"] = "lrocket/build/shared.lua",
      ["lrocket.cfmt"] = "lrocket/cfmt.lua",
      ["lrocket.genc"] = "lrocket/genc.lua",
      ["lrocket.init"] = "lrocket/init.lua",
      ["lrocket.log"] = "lrocket/log.lua",
      ["lrocket.lua"] = "lrocket/lua.lua",
      ["lrocket.pathmap"] = "lrocket/pathmap.lua",
      ["lrocket.routines"] = "lrocket/routines.lua",
      ["lrocket.scan"] = "lrocket/scan.lua",
      ["lrocket.str_to_hex"] = "lrocket/str_to_hex.c",
      ["lrocket.toolchain.gnu"] = "lrocket/toolchain/gnu.lua",
      ["lrocket.toolchain.init"] = "lrocket/toolchain/init.lua",
      ["lrocket.toolchain.msvc"] = "lrocket/toolchain/msvc.lua",
      ["lrocket.utils"] = "lrocket/utils.lua",
      ["lrocket.version"] = "lrocket/version.lua",
   },

   install = {
      bin = {
         lrc = "cmd/lrc.lua"
      }
   }
}
dependencies = {
   "argparse",
   "sfs",
   "lua-term",
}