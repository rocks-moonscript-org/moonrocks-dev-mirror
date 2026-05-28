local git_ref = 'ace9b4e503cb095b9a3f6442c909d117c4aa8d0e'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/nvim-mini/mini.indentscope'

rockspec_format = '3.0'
package = 'mini.indentscope'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Visualize and work with indent scope. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.indentscope',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.indentscope-' .. 'ace9b4e503cb095b9a3f6442c909d117c4aa8d0e',
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
