local git_ref = 'aa3833b0122a6a7a1381613449ab39f14de50bb7'
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
  dir = 'mini.fuzzy-' .. 'aa3833b0122a6a7a1381613449ab39f14de50bb7',
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
