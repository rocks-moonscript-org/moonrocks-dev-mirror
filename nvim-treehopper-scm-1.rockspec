local git_ref = '5a28bff46c05d28bdb4bcaef67e046eb915a9390'
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
  dir = 'nvim-treehopper-' .. '5a28bff46c05d28bdb4bcaef67e046eb915a9390',
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
