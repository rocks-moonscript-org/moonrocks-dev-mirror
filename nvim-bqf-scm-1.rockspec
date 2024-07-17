local git_ref = '1b24dc6050c34e8cd377b6b4cd6abe40509e0187'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/kevinhwang91/nvim-bqf'

rockspec_format = '3.0'
package = 'nvim-bqf'
version = modrev ..'-'.. specrev

description = {
  summary = 'Better quickfix window in Neovim, polish old quickfix window.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kevinhwang91/nvim-bqf',
  license = 'BSD-3-Clause'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-bqf-' .. '1b24dc6050c34e8cd377b6b4cd6abe40509e0187',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc', 'plugin' } ,
}
