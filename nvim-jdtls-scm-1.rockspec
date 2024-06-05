local git_ref = 'ad5ab1c9246caa9e2c69a7c13d2be9901b5c02aa'
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
  dir = 'nvim-jdtls-' .. 'ad5ab1c9246caa9e2c69a7c13d2be9901b5c02aa',
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
