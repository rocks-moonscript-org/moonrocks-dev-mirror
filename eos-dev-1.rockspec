package = "eos"
version = "dev-1"

source = {
  url = "*** please add URL for source tarball, zip or repository here ***"
}

description = {
  homepage = "https://github.com/axa-dev/eos",
  license = "GPL-3"
}

dependencies = {
  "lua >= 5.1, < 5.5",
}

build = {
  type = "builtin",
  modules = {
    ["eos.path"] = { "src/lib/defs.c", "src/path.c" },
    ["eos.user"] = { "src/lib/defs.c", "src/user.c" }
  }
}
