local git_ref = 'b820379e333da87b4ee1eca41792aecea998eee3'
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
  dir = 'mini.align-' .. 'b820379e333da87b4ee1eca41792aecea998eee3',
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
