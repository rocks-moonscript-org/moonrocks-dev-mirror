package = "kitti_scoring"
version = "scm-1"

source = {
   url = "git://github.com/jbschlosser/kitti_scoring.torch",
   tag = "master"
}

description = {
   summary = "KITTI dataset scoring",
   detailed = [[
   	    Scoring for the KITTI dataset
   ]],
   homepage = "https://github.com/jbschlosser/kitti_scoring.torch"
}

dependencies = {
   "torch >= 7.0"
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
