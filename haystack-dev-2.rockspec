package = "haystack"
version = "dev-2"
source = {
   url = "git+https://github.com/candronikos/haystack",
   branch = "master",
   dir = "haystack"
}

description = {
   summary = "Lua bindings for Haystack data types and parsers",
   detailed = [[
      Haystack provides Lua bindings for Project Haystack semantic data modeling.
      Supports parsing and manipulation of Haystack data types including grids, dictionaries,
      references, dates, times, coordinates, and more. Includes Zinc format parsing and 
      generation capabilities for IoT and building automation data exchange.
   ]],
   homepage = "https://candronikos.com/projects/haystack-rust/",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
   "luarocks-build-rust-mlua"
}

external_dependencies = {
   RUST = {
      program = "cargo"
   }
}

build = {
   type = "rust-mlua",
   build_command = [[
      cd haystack-lua && 
      LUA_FEATURE="lua$(LUA_VERSION | sed 's/\.//')" &&
      cargo build --release --features $LUA_FEATURE &&
      cp target/release/libhaystack_lua.so haystack.so
   ]],
   install_command = [[
      cp haystack-lua/haystack.so $(LIBDIR)/haystack.so
   ]],
   build_variables = {
      LUA_VERSION = "$(LUA_VERSION)",
   }
}