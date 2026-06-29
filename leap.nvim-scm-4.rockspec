local git_ref = '0e7e69df7df81920ea9064d31c343a5f2e0517cd'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'leap.nvim-' .. '0e7e69df7df81920ea9064d31c343a5f2e0517cd',
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
