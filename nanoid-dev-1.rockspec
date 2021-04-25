rockspec_format = "3.0"
package = "nanoid"
version = "dev-1"
source = {
   url = "git://github.com/mrtnpwn/nanoid",
   branch = "main",
}
description = {
   summary = "Tiny, secure, URL-friendly, unique string ID generator",
   detailed = [[
   Tiny, secure, URL-friendly, unique string ID generator

   Visit the repository at GitHub for more information.
   ]],
   homepage = "https://github.com/mrtnpwn/nanoid",
   license = "MIT",
   maintainer = "Martín Aguilar <ik7swordking@gmail.com>",
}
dependencies = {
   "luaossl ~> 20200709-0",
}
build = {
   type = "builtin",
   modules = {
      ["nanoid"] = "build/nanoid/init.lua",
      ["nanoid.non_secure"] = "build/nanoid/non_secure.lua",
   },
   install = {
      lua = {
         ["nanoid"] = "src/nanoid/init.tl",
         ["nanoid.non_secure"] = "src/nanoid/non_secure.tl",
      },
      bin = {
         nanoid = "build/nanoid/cli.lua",
      }
   }
}
