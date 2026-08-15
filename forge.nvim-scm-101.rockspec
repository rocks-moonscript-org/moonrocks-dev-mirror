local git_ref = 'da55309cad5047fc7b9ce375b82013b9e441d4db'
local modrev = 'scm'
local specrev = '101'

local repo_url = 'https://github.com/barrettruth/forge.nvim'

rockspec_format = '3.0'
package = 'forge.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/barrettruth/forge.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'forge.nvim-' .. 'da55309cad5047fc7b9ce375b82013b9e441d4db',
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
