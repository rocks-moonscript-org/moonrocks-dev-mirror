local git_ref = '3497eb39bf413a57ab5b7e7e2e192683e462148c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/theHamsta/nvim-dap-virtual-text'

rockspec_format = '3.0'
package = 'nvim-dap-virtual-text'
version = modrev ..'-'.. specrev

description = {
  summary = 'Adds virtual text support to nvim-dap.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/theHamsta/nvim-dap-virtual-text',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-dap' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dap-virtual-text-' .. '3497eb39bf413a57ab5b7e7e2e192683e462148c',
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
