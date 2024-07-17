local git_ref = 'de6587e99371aeb92cfda3415b6a696c1f55d397'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimdev/guard-collection'

rockspec_format = '3.0'
package = 'guard-collection'
version = modrev ..'-'.. specrev

description = {
  summary = 'Collection of configuration for guard.nvim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvimdev/guard-collection',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'guard-collection-' .. 'de6587e99371aeb92cfda3415b6a696c1f55d397',
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
