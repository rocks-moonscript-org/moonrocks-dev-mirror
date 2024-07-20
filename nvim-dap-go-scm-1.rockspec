local git_ref = '5030d53097fed7b75524a04048d8dbf417fa0140'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/leoluz/nvim-dap-go'

rockspec_format = '3.0'
package = 'nvim-dap-go'
version = modrev ..'-'.. specrev

description = {
  summary = 'An extension for nvim-dap providing configurations for launching go debugger (delve) and debugging individual tests',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/leoluz/nvim-dap-go',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-dap' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dap-go-' .. '5030d53097fed7b75524a04048d8dbf417fa0140',
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
