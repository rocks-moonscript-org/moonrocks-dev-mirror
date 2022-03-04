package = "ovtable"
version = "scm-2"
source = {
   url = "git+https://github.com/well-in-that-case/ovtable"
}
description = {
   summary = "Fast, friendly, and dynamic ordered table support for your codebase.",
   homepage = "https://github.com/well-in-that-case/ovtable",
   license = "MIT",
   detailed = [[
      ovtable offers you fast, friendly, and dynamic ordered table support in your codebase. It features:
      
      - No dependencies.
      - Tiny signature, less than 10kb.
      - Unrivaled lookup performance, completely native.
      - Incredibly speedy assignment; native performance unless you wish to reorder after the modification.
      - Quickly reading a field by its ovtable insertion index (not by key), doing so upwards of 100,000 times in 20 milliseconds.
      - Retaining numeric indice, and normal unordered field support all within the same table.
      - Separation between ordered iterators and normal iterators, with optional overrides.
      - Optional optimizations, such as skipping assertion calls, or predefining a table identifier.
      - Fetching the name of a key by its insertion index.
      - Designed to be abused, benchmarked, and used inside loops that run way too long.
      - Slowly becoming time-tested. We're gaining nearly 2,000 downloads a day without a single issue reported so far.
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
