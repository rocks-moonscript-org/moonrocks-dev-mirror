rockspec_format = "3.0"

package = "busted-tl"
version = "dev-1"

source = {
   url = "git+https://gitea.aireone.xyz/Aire-One/busted-tl.git",
}

description = {
   summary = "Add Teal capabilities to Busted 🧙",
   detailed = "Busted-tl is a new Loader for Busted that adds Teal support.",
   license = "MIT",
   homepage = "https://gitea.aireone.xyz/Aire-One/busted-tl",
   issues_url = "https://gitea.aireone.xyz/Aire-One/busted-tl/issues",
   maintainer = "Aire-One",
   labels = {
      "busted",
      "teal",
      "testing",
   },
}

dependencies = {
   "lua >= 5.1",
   "penlight >= 1.3.2",
   "busted >= 2.1.2-3",
   "tl >= 0.15.1-1",
}

build_dependencies = {
   "cyan >= 0.3.0-1",
}

build = {
   type = "command",
   build_command = "cyan build",
   install = {
      lua = {
         ["busted.modules.files.teal"] = "build/busted-tl/teal.lua",
      },
   },
}

test = {
   type = "busted",
   flags = {
      "--loaders=teal",
   },
}
