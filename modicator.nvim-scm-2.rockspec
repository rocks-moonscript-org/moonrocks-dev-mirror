local git_ref = '7f867b4980946f115f4ccb922637d70d89a59cb4'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/mawkler/modicator.nvim'

rockspec_format = '3.0'
package = 'modicator.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Cursor line number mode indicator plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mawkler/modicator.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'modicator.nvim-' .. '7f867b4980946f115f4ccb922637d70d89a59cb4',
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
