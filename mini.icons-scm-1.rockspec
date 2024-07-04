local git_ref = '972fd138fe204dc1e9807cd1004cf851e32daf4b'
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
  dir = 'mini.icons-' .. '972fd138fe204dc1e9807cd1004cf851e32daf4b',
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
