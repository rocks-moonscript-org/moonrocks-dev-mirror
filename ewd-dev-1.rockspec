rockspec_format = "3.0"
package = "ewd"
version = "dev-1"
source = {
  url = "https://imagicthecat.thul.fr/fossils/ewd/zip/trunk/ewd-dev.zip"
}

description = {
  summary = "Personal methodology to deal with Error, Warning and Debugging.",
  detailed = [[
EWD, which stands for Error Warning Debugging, is a Lua(JIT) module which aims
to be a fundamental component of my methodology to deal with error handling,
warning and debugging. At the moment, LuaJIT is the only target.
  ]],
  homepage = "https://imagicthecat.thul.fr/fossils/ewd",
  license = "MIT"
}

dependencies = {
  "lua == 5.1"
}
