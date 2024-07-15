rockspec_format = "3.0"
package = "shapi"
version = "dev-3"
source = {
  url = "https://imagicthecat.thul.fr/fossils/shapi/zip/trunk/shapi-dev.zip"
}

description = {
  summary = "Module which implements a shell/CLI eDSL (API).",
  detailed = [[
The incentive is to have an alternative to a shell language like bash, as an API.
E.g. for scripting purposes, if one already uses Lua at the heart of its methodology, or to be embedded into an existing application.
  ]],
  homepage = "https://imagicthecat.thul.fr/fossils/shapi",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, <= 5.4",
  "luaposix >= 36.1"
}
