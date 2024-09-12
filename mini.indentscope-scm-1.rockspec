local git_ref = 'da9af64649e114aa79480c238fd23f6524bc0903'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.indentscope'

rockspec_format = '3.0'
package = 'mini.indentscope'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Visualize and work with indent scope. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.indentscope',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.indentscope-' .. 'da9af64649e114aa79480c238fd23f6524bc0903',
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
