local git_ref = 'cc9dd33aade7f20bae414d0cba163bc60d4d4b43'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/rcarriga/nvim-dap-ui'

rockspec_format = '3.0'
package = 'nvim-dap-ui'
version = modrev ..'-'.. specrev

description = {
  summary = 'A UI for nvim-dap',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rcarriga/nvim-dap-ui',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-dap', 'nvim-nio' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dap-ui-' .. 'cc9dd33aade7f20bae414d0cba163bc60d4d4b43',
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
