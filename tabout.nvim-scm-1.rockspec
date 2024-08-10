local git_ref = '923aea2613c9e7abf81e099d46086f62c7e54896'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/abecodes/tabout.nvim'

rockspec_format = '3.0'
package = 'tabout.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'tabout plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/abecodes/tabout.nvim',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tabout.nvim-' .. '923aea2613c9e7abf81e099d46086f62c7e54896',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
