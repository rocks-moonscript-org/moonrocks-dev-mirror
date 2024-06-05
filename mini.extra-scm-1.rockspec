local git_ref = 'a89d2376082cfe4b9d55713beddd5c5f5995ea2a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.extra'

rockspec_format = '3.0'
package = 'mini.extra'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extra \'mini.nvim\' functionality. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.extra',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.extra-' .. 'a89d2376082cfe4b9d55713beddd5c5f5995ea2a',
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
