local git_ref = 'a9a9faee45066f2796c9a0e0ef52bf571d144492'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ggandor/leap.nvim'

rockspec_format = '3.0'
package = 'leap.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim\'s answer to the mouse 🦘',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ggandor/leap.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'repeat.vim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'leap.nvim-' .. 'a9a9faee45066f2796c9a0e0ef52bf571d144492',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
