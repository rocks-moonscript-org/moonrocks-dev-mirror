package = "lminiz"
version = "scm-0"

source = {
   url = "git://github.com/avaicode/lua-miniz.git",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   copy_directories = {},

   type = "builtin",

   modules = {
      miniz = "lminiz.c"
   }
}
