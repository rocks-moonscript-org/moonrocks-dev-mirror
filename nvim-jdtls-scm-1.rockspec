local git_ref = '99e4b2081de1d9162666cc7b563cbeb01c26b66b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mfussenegger/nvim-jdtls'

rockspec_format = '3.0'
package = 'nvim-jdtls'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extensions for the built-in LSP support in Neovim for eclipse.jdt.ls',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mfussenegger/nvim-jdtls',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-jdtls-' .. '99e4b2081de1d9162666cc7b563cbeb01c26b66b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
