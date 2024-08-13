local git_ref = '1ef72de6a02458d31b10039372c8a15ab8989e0d'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ggandor/flit.nvim'

rockspec_format = '3.0'
package = 'flit.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Enhanced f/t motions for leap.nvim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ggandor/flit.nvim',
  license = 'UNLICENSE'
}

dependencies = { 'lua >= 5.1', 'leap.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'flit.nvim-' .. '1ef72de6a02458d31b10039372c8a15ab8989e0d',
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
