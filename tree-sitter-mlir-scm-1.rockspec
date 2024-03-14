local git_ref = 'a56445f841ae7246e4aa3fdf7b4ef0bccdc82e7c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/artagnon/tree-sitter-mlir'

rockspec_format = '3.0'
package = 'tree-sitter-mlir'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for mlir',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/artagnon/tree-sitter-mlir',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-mlir-' .. 'a56445f841ae7246e4aa3fdf7b4ef0bccdc82e7c',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "mlir",
  sources = { "src/parser.c" },
  generate_from_grammar = true,
  generate_requires_npm = false,
  location = nil,
}
