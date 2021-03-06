package = "trepl-torchless"
version = "scm-2"

source = {
   url = "git://github.com/torch/trepl",
   branch = "master",
}

description = {
   summary = "A REPL for Lua/LuaJIT.",
   detailed = [[
A REPL for Lua/LuaJIT that features pretty printing, tab completion, history,
and more. This is an unofficial packaging of trepl without Torch dependencies.
It is installed under the executable 'th'.

Use trepl under LuaJIT with following the shell alias: alias th='luajit /usr/lib/luarocks/rocks-5.1/trepl-torchless/scm-1/bin/th'
   ]],
   homepage = "https://github.com/torch/trepl",
   license = "BSD"
}

dependencies = {
   "penlight >= 1.1.0",
}

build = {
   type = "builtin",
   modules = {
      ['trepl.init'] = 'init.lua',
      ['trepl.colors'] = 'colors.lua',
      ['trepl.colorize'] = 'colorize.lua',
      ['readline'] = {
         sources = {'readline.c'},
         libraries = {'readline'}
      },
      ['treplutils'] = {
         sources = {'utils.c'},
      }
   },
   platforms = {
      freebsd = {
             modules = {
                  ['readline'] = {
                    incdirs = {'/usr/local/include'},
                    libdirs = {'/usr/local/lib'}
                  }
             }
      },
      windows = {
	     modules = {
		    ['readline'] = {
               sources = {'readline.c'},
               libraries = {'readline'},
               defines = {"WinEditLine"},
               incdirs = {"..\\..\\win-files\\3rd\\wineditline-2.201\\include"},
               libdirs = {"..\\..\\win-files\\3rd\\wineditline-2.201\\lib64"},
               libraries = {'edit_static', 'user32'}
			}
		 }
	  }
   },
   install = {
      bin = {
         'th'
      }
   }
}
