rockspec_format = "3.0"
package = "cmt"
version = "dev-1"
source = {
  url = "https://imagicthecat.thul.fr/fossils/cmt/zip/trunk/cmt-dev.zip"
}

description = {
  summary = "Module that provides abstractions over Lua coroutines.",
  detailed = "CMT, which stands for Coroutine (or Cooperative, Collaborative) \z
Multi-Threading (or Tasking), is a module providing abstractions over Lua \z
coroutines to, for example, nicely build and synchronize asynchronous \z
operations.",
  homepage = "https://imagicthecat.thul.fr/fossils/cmt",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, <= 5.4"
}
