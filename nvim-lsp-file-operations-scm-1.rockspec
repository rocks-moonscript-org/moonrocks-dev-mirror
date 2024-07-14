local git_ref = '92a673de7ecaa157dd230d0128def10beb56d103'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/antosha417/nvim-lsp-file-operations'

rockspec_format = '3.0'
package = 'nvim-lsp-file-operations'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin that adds support for file operations using built-in LSP',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/antosha417/nvim-lsp-file-operations',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lsp-file-operations-' .. '92a673de7ecaa157dd230d0128def10beb56d103',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
