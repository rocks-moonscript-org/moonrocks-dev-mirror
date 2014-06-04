package = "Bitfield"
version = "scm-1"

local tag = "master"
source = {
   url = "https://raw.github.com/JohnHind/Lua_Bitfield/"..tag.."/bitfield.c",
   -- tag = tag,
}

description = {
   summary = "Packed Bitfield Type Library for Lua",
   detailed = [[
      A bitfield is an add-in Lua type provided by the bitfield.dll /
      bitfield.so run-time loadable library. It is implemented as a subtype of
      userdata which stores a vector of bits (or booleans) between 1 and 256
      bits wide. The state of the bits in a bitfield is mutable, but the width
      is not (it is established when the bitfield is created).

      This library is offered as an alternative to the standard Lua bit32
      library. The primary applications targeted are the implementation of
      communications protocols and the representation of bit-mapped registers
      in hardware devices.
   ]],
   license = "MIT/X11",
   homepage = "https://github.com/JohnHind/Lua_Bitfield",
}

dependencies = {
   "lua ~> 5.2"
}

build = {
   type = "builtin",
   modules = {
      bitfield = "bitfield.c",
   }
}
