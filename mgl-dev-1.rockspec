rockspec_format = "3.0"
package = "mgl"
version = "dev-1"
source = {
  url = "https://imagicthecat.thul.fr/fossils/mgl/zip/trunk/mgl-dev.zip",
}

description = {
  summary = "Mathematics for Graphics in Lua",
  detailed = [[
Mathematics for Graphics in Lua, or Mathematics for OpenGL, is a math library
for graphics purposes. It is effectively designed for 2D/3D rendering.
  ]],
  homepage = "https://imagicthecat.thul.fr/fossils/mgl",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, <= 5.4"
}
