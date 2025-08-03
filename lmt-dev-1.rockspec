package = "lmt"
version = "dev-1"
source = {
   url = "https://github.com/mar1lusk1/lmt/releases/"
}
description = {
   summary = "lmt (stylized as ∫mŧ) is an small, single-file logger for Lua.",
   detailed = "lmt (stylized as ∫mŧ) is an small, single-file logger for Lua. It uses a detailed format both parseable for machines and readable for humans.",
   homepage = "https://github.com/mar1lusk1/lmt/",
   license = "zlib/libpng"
}
build = {
   type = "builtin",
   modules = {
      lmt = "lmt.lua"
   }
}
