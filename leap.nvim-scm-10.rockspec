local git_ref = 'cbb7d3e4d9584d6b1ae47932f894eb4a16197a52'
local modrev = 'scm'
local specrev = '10'

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
  dir = 'leap.nvim-' .. 'cbb7d3e4d9584d6b1ae47932f894eb4a16197a52',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
