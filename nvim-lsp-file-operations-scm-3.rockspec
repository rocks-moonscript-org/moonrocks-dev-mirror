local git_ref = 'c12ebaecdc89539bf76d254a88a688f649b25c32'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'nvim-lsp-file-operations-' .. 'c12ebaecdc89539bf76d254a88a688f649b25c32',
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
