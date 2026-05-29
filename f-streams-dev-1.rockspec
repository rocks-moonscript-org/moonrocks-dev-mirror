package = "f-streams"
version = "dev-1"
source = {
   url = "git+https://github.com/lua-atmos/f-streams",
   branch = "main",
}
description = {
   summary = [[
    `f-streams` is a pull-based streams library for Lua.
   ]],
   detailed = [[
    `f-streams` is a pull-based streams library for Lua:

    - A stream produces a new value each time is called.
    - A stream terminates when it returns `nil`.
    - A stream can use `:` combinators to create stream pipelines.
    - A stream can be iterated over using Lua's generic [for][lua-for] loop.
    - A stream can represent infinite lazy lists.

    An example that prints the first three odd numbers multiplied by `2`:

    ```
    local S = require "streams"
    S.from(1)                                       -- 1, 2, 3, ...
        :filter(function (x) return x%2 == 1 end)   -- 1, 3, 5, ...
        :map(function (x) return x * 2 end)         -- 2, 6, 10, ...
        :take(3)                                    -- 2, 6, 10
        :tap(print)                                 -- 2 / 6 / 10
        :to()
    ```
   ]],
   homepage = "https://github.com/lua-atmos/f-streams",
   license = "MIT",
}
dependencies = {
   "lua ~> 5.4",
}
build = {
   type = "builtin",
   modules = {
      ["streams"] = "streams/init.lua",
   },
}
