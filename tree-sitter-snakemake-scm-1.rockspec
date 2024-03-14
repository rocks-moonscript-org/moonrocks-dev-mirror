local git_ref = '65a6c3b4671877821082164da0a310851b211953'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/osthomas/tree-sitter-snakemake'

rockspec_format = '3.0'
package = 'tree-sitter-snakemake'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for snakemake',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/osthomas/tree-sitter-snakemake',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-snakemake-' .. '65a6c3b4671877821082164da0a310851b211953',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "snakemake",
  sources = { "src/parser.c", "src/scanner.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
