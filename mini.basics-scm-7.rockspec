local git_ref = '83bac7ef66d88f22f8b6146aa59e283bb3dc1cf9'
local modrev = 'scm'
local specrev = '7'

local repo_url = 'https://github.com/nvim-mini/mini.basics'

rockspec_format = '3.0'
package = 'mini.basics'
version = modrev ..'-'.. specrev

description = {
  summary = 'Common configuration presets for Neovim Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.basics',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.basics-' .. '83bac7ef66d88f22f8b6146aa59e283bb3dc1cf9',
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
