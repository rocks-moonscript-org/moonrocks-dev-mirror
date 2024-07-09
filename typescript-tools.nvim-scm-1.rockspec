local git_ref = '5da4d695d66f676eb6ea766b946e86f93baaafe7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/pmizio/typescript-tools.nvim'

rockspec_format = '3.0'
package = 'typescript-tools.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'TypeScript integration NeoVim deserves',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/pmizio/typescript-tools.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-lspconfig', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'typescript-tools.nvim-' .. '5da4d695d66f676eb6ea766b946e86f93baaafe7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'ftplugin', 'queries' } ,
}
