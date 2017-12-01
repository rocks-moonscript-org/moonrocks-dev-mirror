package = "srnn"
version = "scm-1"

source = {
   url = "git://github.com/anoidgit/srnn.git",
}

description = {
   summary = "Simple Recurrent Neural Network package for Torch",
   detailed = [[
   ]],
   homepage = "https://github.com/anoidgit/srnn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "luaffi",
   "nn >= 1.0",
   "nngraph"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"  -DLUA_INCDIR="$(LUA_INCDIR)" -DLUA_LIBDIR="$(LUA_LIBDIR)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
