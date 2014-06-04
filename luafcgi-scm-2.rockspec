package = "luafcgi"
version = "scm-2"
source = {
   url = "git://github.com/mbalmer/luafcgi"
}
description = {
   summary = "FastCGI Binding for Lua",
   detailed = [[
FastCGI Binding for Lua
]],
   homepage = "http://github.com/mbalmer/luafcgi",
   license = "3-clause BSD"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
external_dependencies = {
   FCGI = {
      library = "fcgi"
   }
}
build = {
   type = "builtin",
   modules = {
      fcgi = {
         incdirs = {
            "$(FCGI_INCDIR)"
         },
         libdirs = {
            "$(FCGI_LIBDIR)"
         },
         libraries = {
            "fcgi"
         },
         sources = "luafcgi.c"
      }
   }
}
