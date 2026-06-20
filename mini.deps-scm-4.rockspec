local git_ref = '75a5568a36dfb15cf2f459bca30120335bf91ec7'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.deps'

rockspec_format = '3.0'
package = 'mini.deps'
version = modrev ..'-'.. specrev

description = {
  summary = 'Git plugin manager for Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.deps',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.deps-' .. '75a5568a36dfb15cf2f459bca30120335bf91ec7',
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
