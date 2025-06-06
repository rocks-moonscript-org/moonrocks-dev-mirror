-- DO NOT EDIT! Modify template decasify.nvim.rockspec.in and rebuild with `make decasify.nvim-dev-1.rockspec`

rockspec_format = "3.0"
package = "decasify.nvim"
version = "dev-1"

source = {
   url = "git+https://github.com/alerque/decasify.git",
   branch = "master"
}

description = {
   summary = "NeoVIM plugin wrapping decasify crate to cast strings to title-case according to locale specific style guides including Turkish support",
   detailed = [[
      A NeoVIM plugin for
      Provides casing functions for long strings (not just individual words)
      supporting the grammatical style guides of various locales including Turkish.
   ]],
   license = "LGPL-3.0-only",
   homepage = "https://github.com/alerque/decasify",
   issues_url = "https://github.com/alerque/decasify/issues",
   maintainer = "Caleb Maclennan <caleb@alerque.com>",
   labels = { "i18n" }
}

dependencies = {
   "lua >= 5.1",
   "decasify"
}

build = {
   type = "builtin",
   copy_directories = {
      "plugin",
   }
}
