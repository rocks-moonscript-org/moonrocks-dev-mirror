local git_ref = '29e2b6838b3f1399d5062f6d735ebc79eb8765f4'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/nvim-mini/mini.misc'

rockspec_format = '3.0'
package = 'mini.misc'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Miscellaneous functions. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.misc',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.misc-' .. '29e2b6838b3f1399d5062f6d735ebc79eb8765f4',
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
