local git_ref = 'c701192658ddac4e3b20956a964c2b03157b5e51'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.align'

rockspec_format = '3.0'
package = 'mini.align'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin to align text interactively. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.align',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.align-' .. 'c701192658ddac4e3b20956a964c2b03157b5e51',
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
