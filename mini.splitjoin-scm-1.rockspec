local git_ref = 'db26e1c991ff5f8cf377e800ef7fba6b5618306b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.splitjoin'

rockspec_format = '3.0'
package = 'mini.splitjoin'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Split and join arguments. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.splitjoin',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.splitjoin-' .. 'db26e1c991ff5f8cf377e800ef7fba6b5618306b',
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
