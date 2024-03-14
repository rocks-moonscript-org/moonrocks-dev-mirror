local git_ref = 'cbd58ee33e24f46d16b9882b001eefb25a958ee2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/theHamsta/tree-sitter-wgsl-bevy'

rockspec_format = '3.0'
package = 'tree-sitter-wgsl_bevy'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for wgsl_bevy',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/theHamsta/tree-sitter-wgsl-bevy',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-wgsl-bevy-' .. 'cbd58ee33e24f46d16b9882b001eefb25a958ee2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "wgsl_bevy",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = true,
  location = nil,
}
