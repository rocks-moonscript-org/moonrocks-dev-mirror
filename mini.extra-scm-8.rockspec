local git_ref = '9c6affac2b176142f48b185bd7abc5db7ec20ac8'
local modrev = 'scm'
local specrev = '8'

local repo_url = 'https://github.com/nvim-mini/mini.extra'

rockspec_format = '3.0'
package = 'mini.extra'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extra \'mini.nvim\' functionality. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.extra',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.extra-' .. '9c6affac2b176142f48b185bd7abc5db7ec20ac8',
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
