local git_ref = '51059bcf21016387b6233c89eed220cf47fca752'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/DNLHC/glance.nvim'

rockspec_format = '3.0'
package = 'glance.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A pretty window for previewing, navigating and editing your LSP locations',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/DNLHC/glance.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'glance.nvim-' .. '51059bcf21016387b6233c89eed220cf47fca752',
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
