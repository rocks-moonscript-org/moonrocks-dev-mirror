local git_ref = 'd0ec9d4ca195b2c87bf46ab050130a2c806310c4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/miversen33/netman.nvim'

rockspec_format = '3.0'
package = 'netman.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim (Lua powered) Network Resource Manager',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/miversen33/netman.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'netman.nvim-' .. 'd0ec9d4ca195b2c87bf46ab050130a2c806310c4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
