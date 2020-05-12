package = "warn"
version = "dev-1"
source = {
   url = "git+https://github.com/darkwiiplayer/lua-warn.git";
}

description = {
   homepage = "https://github.com/darkwiiplayer/lua-warn",
   license = "Public Domain";
}

build = {
   type = "builtin",
   modules = {
     warn = 'warn.lua';
     ["warn.compatible"] = 'warn/compatible.lua';
   }
}
