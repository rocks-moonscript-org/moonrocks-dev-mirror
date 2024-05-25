local git_ref = '13559079e33665a310d9ccf0e43f4e9bb9f337e2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/mfussenegger/nvim-treehopper'

rockspec_format = '3.0'
package = 'nvim-treehopper'
version = modrev ..'-'.. specrev

description = {
  summary = 'Region selection with hints on the AST nodes of a document powered by treesitter',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/mfussenegger/nvim-treehopper',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-treehopper-' .. '13559079e33665a310d9ccf0e43f4e9bb9f337e2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
