
-- Rockspec file for Kapo.
-- Copyright © 2026 Diego Martínez.
-- Released under the terms of the MIT License.
-- See file `LICENSE.md` for details.

rockspec_format = "3.0"
package = "Kapo"
version = "scm-1"

description = {
	summary = "Mini PO file parser and i18n in pure Lua",
	detailed = "This module implements a minimalistic Uniforum `.po` file parser, and exports an interface inspired by GNU Gettext. It has only basic checks for PO file correctness. You should use more specialized tools to do a thorough check on your catalogs. It also only supports UTF-8 and ASCII encoded files.",
	license = "MIT",
	homepage = "https://codeberg.org/diegomartinez/kapo",
	issues_url = "https://codeberg.org/diegomartinez/kapo/issues",
	labels = { "i18n" },
}

dependencies = {
	"lua >= 5.1",
}

source = {
	url = "git+https://codeberg.org/diegomartinez/kapo.git",
	branch = "main",
}

build = {
	type = "builtin",
	modules = {
		["kapo"] = "kapo.lua",
	},
}
