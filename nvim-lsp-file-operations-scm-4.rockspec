local git_ref = '276f096ef324c140d00bd0188a0e70382e156771'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'nvim-lsp-file-operations-' .. '276f096ef324c140d00bd0188a0e70382e156771',
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
