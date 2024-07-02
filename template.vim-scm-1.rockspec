local git_ref = 'accdfa23d9df0980318fa1b0c9674438413d5a38'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/template.vim'

rockspec_format = '3.0'
package = 'template.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Powerful template engine/plugin for vim',
  detailed = '',
  labels = { 'jinja2', 'template', 'vim' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/template.vim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'template.vim-' .. 'accdfa23d9df0980318fa1b0c9674438413d5a38',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'ftdetect', 'plugin', 'syntax' } ,
}
