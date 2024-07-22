local git_ref = '10e1f8a70e4e3a2dddb4a1880943d70fb21d95df'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/udayvir-singh/tangerine.nvim'

rockspec_format = '3.0'
package = 'tangerine.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🍊 Sweet Fennel integration for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/udayvir-singh/tangerine.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tangerine.nvim-' .. '10e1f8a70e4e3a2dddb4a1880943d70fb21d95df',
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
