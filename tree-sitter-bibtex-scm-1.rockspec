local git_ref = 'ccfd77db0ed799b6c22c214fe9d2937f47bc8b34'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/latex-lsp/tree-sitter-bibtex'

rockspec_format = '3.0'
package = 'tree-sitter-bibtex'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for bibtex',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/latex-lsp/tree-sitter-bibtex',
  license = 'UNKNOWN'
}

dependencies = {
  'luarocks-build-treesitter-parser',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-bibtex-' .. 'ccfd77db0ed799b6c22c214fe9d2937f47bc8b34',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "tree-sitter",
  lang = "bibtex",
  sources = { "src/parser.c" },
  generate_from_grammar = false,
  generate_requires_npm = false,
  location = nil,
}
