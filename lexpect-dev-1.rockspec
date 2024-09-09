package = "lexpect"
version = "dev-1"
source = {
   url = "git+https://codeberg.org/KanakoTheGay/lexpect"
}
description = {
   homepage = "https://codeberg.org/KanakoTheGay/lexpect",
   license = "MIT"
}
build = {
   type = "rust-mlua",
   modules = {
      "lexpect"
   },
   features = {
      "lib"
   }
}
