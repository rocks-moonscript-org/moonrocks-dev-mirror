local git_ref = '3bedb1576db574af160643eea7df3b09dbe5ee9c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvzone/volt'

rockspec_format = '3.0'
package = 'volt'
version = modrev ..'-'.. specrev

description = {
  summary = 'Plugin for creating reactive UI in neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvzone/volt',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'volt-' .. '3bedb1576db574af160643eea7df3b09dbe5ee9c',
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
