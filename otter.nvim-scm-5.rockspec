local git_ref = '0b38ccef44a805e8b378f5f6ce38aad0642c9366'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/jmbuhr/otter.nvim'

rockspec_format = '3.0'
package = 'otter.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Just ask an otter!',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jmbuhr/otter.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'otter.nvim-' .. '0b38ccef44a805e8b378f5f6ce38aad0642c9366',
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
