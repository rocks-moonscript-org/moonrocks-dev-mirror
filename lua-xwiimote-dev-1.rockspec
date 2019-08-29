package = "lua-xwiimote"
rockspec_format = "3.0"
version = "dev-1"
source = {
   url = "git://github.com/v1993/lua-xwiimote"
}

description = {
   summary = 'Lua bindings to XWiimote linux stack',
   homepage = "https://github.com/v1993/lua-xwiimote",
   issues_url = "https://github.com/v1993/lua-xwiimote/issues",
   license = "MIT/X11",
   labels = { 'linux', 'game', 'joystick' }
}

supported_platforms = { 'linux' }

dependencies = {
   "lua >= 5.3, < 5.4"
}

external_dependencies = {
   XWIIMOTE = {
      library = "xwiimote";
      header = "xwiimote.h";
   }
}

build = {
   type = "builtin",
   copy_directories = { 'examples' },
   modules = {
      xwiimote = {
         incdirs = {
            "$(XWIIMOTE_INCDIR)"
         },
         libdirs = {
            "$(XWIIMOTE_LIBDIR)"
         },
         libraries = {
            "xwiimote"
         },
         sources = {"src/monitor.c", "src/interface.c", "src/main.c", "src/event.c"}
      }
   }
}
