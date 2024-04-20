local git_ref = '46ecb9950864528f594cf2ef88cc29b7681cb028'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.diff'

rockspec_format = '3.0'
package = 'mini.diff'
version = modrev ..'-'.. specrev

description = {
  summary = 'Work with diff hunks in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.diff',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.diff-' .. '46ecb9950864528f594cf2ef88cc29b7681cb028',
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
