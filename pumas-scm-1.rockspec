package = 'pumas'
version = 'scm-1'
source = {
   url = 'git+https://github.com/niess/pumas-luajit.git'
}
description = {
   summary = 'This is Work In Progress ...',
   detailed = 'This is Work In Progress ...',
   homepage = 'https://github.com/niess/pumas-luajit',
   license = 'GNU LGPL-3.0'
}
dependencies = {
   'lua 5.1',
   'luasocket',
   'luafilesystem'
}
build = {
   type = 'builtin',
   modules = {
      pumas = 'src/pumas.lua',
      ['pumas.data.elements'] = 'src/pumas/data/elements.lua',
      ['pumas.data.igrf13'] = 'src/pumas/data/igrf13.lua',
      ['pumas.data.materials'] = 'src/pumas/data/materials.lua',
      ['pumas.header.api'] = 'src/pumas/header/api.lua',
      ['pumas.header.extensions'] = 'src/pumas/header/extensions.lua',
      ['pumas.header.gull'] = 'src/pumas/header/gull.lua',
      ['pumas.header.turtle'] = 'src/pumas/header/turtle.lua'
   },
   install = {
       lib = {
           ['pumas.?'] = 'src/pumas/libpumas_extended.so'
       }
   }
}
