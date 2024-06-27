local git_ref = '5020e5dc473707b293aeec5b05e7e88444246885'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.align'

rockspec_format = '3.0'
package = 'mini.align'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin to align text interactively. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.align',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.align-' .. '5020e5dc473707b293aeec5b05e7e88444246885',
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
