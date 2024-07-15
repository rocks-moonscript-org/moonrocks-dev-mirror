local git_ref = '9d9d21868841ce0a26fb2b8ef0eba7021055145c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.icons'

rockspec_format = '3.0'
package = 'mini.icons'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim Icon provider. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.icons',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.icons-' .. '9d9d21868841ce0a26fb2b8ef0eba7021055145c',
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
