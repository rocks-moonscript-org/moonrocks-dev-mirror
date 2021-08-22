package = 'sql-orm'
version = 'scm-1'
source = {
   url = 'git+https://github.com/lalawue/Lua4DaysORM.git',
}
description = {
   summary = 'Lua SQL ORM',
   detailed = [[ An Object-Relational Mapping (ORM) for Lua, modified from https://github.com/itdxer/4DaysORM/ ]],
   homepage = 'https://github.com/lalawue/Lua4DaysORM.git',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
   "luasql-sqlite3 >= 2.6.0"
}
build = {
   type = "builtin",
   modules = {
      ["sql-orm"] = "sql-orm.lua"
   }
}
