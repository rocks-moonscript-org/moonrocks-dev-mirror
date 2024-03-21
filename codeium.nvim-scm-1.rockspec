local git_ref = '73ba2a3a41484437ff8a45ca1e796fa9d6fa1153'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Exafunction/codeium.nvim'

rockspec_format = '3.0'
package = 'codeium.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A native neovim extension for Codeium',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Exafunction/codeium.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'codeium.nvim-' .. '73ba2a3a41484437ff8a45ca1e796fa9d6fa1153',
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
