local git_ref = '35b018a035794e341ac01cb2091bbd71b3f823d0'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.starter'

rockspec_format = '3.0'
package = 'mini.starter'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim start screen. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.starter',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.starter-' .. '35b018a035794e341ac01cb2091bbd71b3f823d0',
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
