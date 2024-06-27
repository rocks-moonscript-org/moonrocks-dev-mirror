local git_ref = '5baaef0579efd4b85eb53e4a388d0c8f09c4fb1e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.deps'

rockspec_format = '3.0'
package = 'mini.deps'
version = modrev ..'-'.. specrev

description = {
  summary = 'Git plugin manager for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.deps',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.deps-' .. '5baaef0579efd4b85eb53e4a388d0c8f09c4fb1e',
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
