package = "lua-bz2"
version = "dev-1"
source = {
   url = "git://github.com/hishamhm/lua-bz2.git"
}
description = {
   summary = "A Lua binding to Julian Seward's libbzip2",
   detailed = [[
      Support for reading and writing .bz2 files
      and handling streams compressed in bzip2 format.
   ]],
   homepage = "https://github.com/hishamhm/lua-bz2",
   license = "ISC"
}
external_dependencies = {
   BZ2 = {
      library = "bz2"
   }
}
build = {
   type = "builtin",
   modules = {
      bz2 = {
         incdirs = {
            "$(BZ2_INCDIR)"
         },
         libdirs = {
            "$(BZ2_LIBDIR)"
         },
         libraries = {
            "bz2"
         },
         defines = {
            "COMPAT53_PREFIX=compat53",
         },
         sources = {
            "lbz.c",
            "lbz2_common.c",
            "lbz2_file_reader.c",
            "lbz2_file_writer.c",
            "lbz2_stream.c",
            "compat-5.3.c",
         }
      },
      ["bz2.ltn12"] = "bz2/ltn12.lua",
   }
}
