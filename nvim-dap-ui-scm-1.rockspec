local git_ref = '334cf3038c4756e6ab999cbac67c847fb654c190'
local modrev = 'scm'
local specrev = '1'

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

dependencies = { 'lua >= 5.1', 'nvim-dap' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dap-ui-' .. '334cf3038c4756e6ab999cbac67c847fb654c190',
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
