package = "streamcsv"
version = "dev-1"
source = {
   url = "git+https://github.com/darkwiiplayer/streamcsv.git"
}
description = {
   homepage = "https://github.com/darkwiiplayer/streamcsv",
   license = "Unlicense"
}
build = {
   type = "builtin",
   modules = {
      ["streamcsv"]= "streamcsv/init.lua";
      ["streamcsv.read"] = "streamcsv/read.lua";
      ["streamcsv.write"] = "streamcsv/write.lua";
   }
}
