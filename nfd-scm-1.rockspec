package = "nfd"
version = "scm-1"
source = {
   url = "git://github.com/Alloyed/nativefiledialog"
}
description = {
   summary = "Invoke platform-native Open/Save File dialogs",
   detailed = [[
A tiny, neat library that portably invokes native file open and save dialogs.
Write dialog code once and have it pop up native dialogs on all supported
platforms. Supports Windows, Mac OSX, and Gtk3 on linux.]],
   homepage = "https://github.com/Alloyed/nativefiledialog/tree/master/lua",
   license = "zlib"
}
dependencies = {
   "lua ~> 5.1"
}
-- TODO: We can probably use the linux makefile for freebsd.
supported_platforms = { "linux", "macosx", "windows" }
external_dependencies = {
   platforms = {
      linux = {
         gtk3 = {
            library = "gtk-3",
         }
      },
      macosx = {
         appkit = {
            library = "AppKit",
         }
      },
      windows = {
         -- technically not external because it's shipped with windows
         --com = {
         --   library = "comctl32.lib",
         --}
      }
   }
}
build = {
   platforms = {
      linux = {
         type = "make",
         makefile = "lua/Makefile.linux",
         build_variables = {
            CFLAGS="$(CFLAGS)",
            LIBFLAG="$(LIBFLAG)",
            LUA_LIBDIR="$(LUA_LIBDIR)",
            LUA_INCDIR="$(LUA_INCDIR)",
         },
         install_variables = {
            INST_LIBDIR="$(LIBDIR)",
         },
      },
      windows = {
         type = "builtin",
         modules = {
            nfd = {
               sources = {
                  "src/nfd_common.c",
                  "src/nfd_win.cpp",
                  "lua/nfd_wrap_lua.c"
               },
               defines = {"_CRT_SECURE_NO_WARNINGS"},
               libraries = {"comctl32"},
               incdirs = {"src/include"}
            }
         }
      },
      macosx = {
         type = "builtin",
         modules = {
            nfd = {
               sources = {
                  "src/nfd_common.c",
                  "src/nfd_cocoa.m",
                  "lua/nfd_wrap_lua.c"
               },
               libraries = {"AppKit"},
               incdirs = {"src/include"}
            }
         }
      }
   }
}
