local git_ref = '986d83dfced0dc36c442a4172bcfd7281703f269'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.fuzzy'

rockspec_format = '3.0'
package = 'mini.fuzzy'
version = modrev ..'-'.. specrev

description = {
  summary = 'Fuzzy matching for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.fuzzy',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.fuzzy-' .. '986d83dfced0dc36c442a4172bcfd7281703f269',
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
