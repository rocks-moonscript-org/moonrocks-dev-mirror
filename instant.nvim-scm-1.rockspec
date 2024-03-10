local git_ref = '294b6d08143b3db8f9db7f606829270149e1a786'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jbyuki/instant.nvim'

rockspec_format = '3.0'
package = 'instant.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Collaborative editing in Neovim using built-in capabilities',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jbyuki/instant.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'instant.nvim-' .. '294b6d08143b3db8f9db7f606829270149e1a786',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
