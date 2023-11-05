rockspec_format = "3.0"
package = "seed"
version = "dev-1"
source = {
   url = "git+https://git@codeberg.org/quien/seed.git",
}
description = {
   summary = "Tiny module for building Web applications",
   homepage = "https://codeberg.org/quien/seed",
   license = "MIT",
}
build_dependencies = {
   "luarocks-build-fennel",
   "fennel",
}
build = {
   type = "fennel",
   modules = {
      ["seed"] = "src/seed.fnl",
   },
}
