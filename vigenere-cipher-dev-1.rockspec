package = "vigenere-cipher"
version = "dev-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "https://gist.github.com/SerJaimeLannister/7321c699e44625c519a1a10f64e8f001",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["Vigenere-Cipher"] = "Vigenere-Cipher.lua"
   }
}
