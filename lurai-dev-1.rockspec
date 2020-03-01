package = "lurai"
version = "dev-1"
source = {
   url = "https://github.com/ahmadrosid/lurai/archive/v0.0.1.zip"
}
description = {
   summary = "A lua library to querying html document just like jquery.",
   detailed = [[
## Installation
```bash
luarocks install lurai
```]],
   homepage = "https://github.com/ahmadrosid/lurai",
   license = "MIT <http://opensource.org/licenses/MIT>"
}
build = {
   type = "builtin",
   modules = {
      ['lurai'] = "src/lurai.lua",
      ['lurai.parser'] = "src/parser.lua",
      ['lurai.query'] = "src/query.lua"
   }
}
