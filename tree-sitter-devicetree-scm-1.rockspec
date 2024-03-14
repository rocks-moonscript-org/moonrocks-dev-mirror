local git_ref = '0.5.0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/joelspadin/tree-sitter-devicetree'

rockspec_format = '3.0'
package = 'tree-sitter-devicetree'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for devicetree',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/joelspadin/tree-sitter-devicetree',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-devicetree-' .. 'scm',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "devicetree",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
