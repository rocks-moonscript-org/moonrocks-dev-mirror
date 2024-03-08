local git_ref = 'ee9446a17c160aba6a04ff22097389c41872c878'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.ai'

rockspec_format = '3.0'
package = 'mini.ai'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extend and create a/i textobjects. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.ai',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.ai-' .. 'ee9446a17c160aba6a04ff22097389c41872c878',
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
