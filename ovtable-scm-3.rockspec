package = "ovtable"
version = "scm-3"
source = {
   url = "git+https://github.com/well-in-that-case/ovtable"
}
description = {
   summary = "Fast, friendly, and dynamic ordered table support for your codebase.",
   homepage = "https://github.com/well-in-that-case/ovtable",
   license = "MIT",
   detailed = [[
      ovtable offers you fast, friendly, and dynamic ordered table support in your codebase. It features:
      
      - Zero-overhead lookups.
      - Helps enhance your readability.
      - Good overall run-time performance.
      - Zero-overhead assignment outside of ordered operations.
      - Becoming polished to reduce your key-strokes, and henceforth reduce errors.
      - Very good codebase compatibility with large windows for zero-overhead operations.
      - Interested in making the developer experience easier, for such syntactic sugar implementations.
      - Compatible with sandboxed developer environments, because it's written in plain Lua.
      - No limitation on your keys. Your table can harbor ordered, unordered, numeric, and first-class object keys.

      View the documentation here:
      https://well-in-that-case.github.io/ovtable/
   ]]
}
dependencies = {
   "lua >= 5.2"
}
build = {
   type = "builtin",
   modules = {
      ovtable = "src/ovtable.lua"
   }
}
