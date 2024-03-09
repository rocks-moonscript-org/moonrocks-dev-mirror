local git_ref = 'ab5da55cc52cf32215c729c17b5e204929c987b7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/sourcegraph/sg.nvim'

rockspec_format = '3.0'
package = 'sg.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Experimental Sourcegraph + Cody plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/sourcegraph/sg.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sg.nvim-' .. 'ab5da55cc52cf32215c729c17b5e204929c987b7',
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
