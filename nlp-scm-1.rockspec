package = "nlp"
version = "scm-1"

source = {
   url = "git://github.com/vzhong/nlp",
   tag = "master"
}

description = {
   summary = "Natural language processing in Torch",
   detailed = [[
        Natural language processing tools implemented in Torch
   ]],
   homepage = "https://github.com/vzhong/nlp"
}

dependencies = {
   "torch >= 7.0",
   "penlight",
   "busted",
   "xlua",
   "optim",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
