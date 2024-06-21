local git_ref = 'efc01869ccc2feb1c4a04e410d64dce9b3566f10'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/conceal.vim'

rockspec_format = '3.0'
package = 'conceal.vim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Display emoji in your vim',
  detailed = '',
  labels = { 'conceal', 'emoji', 'vim' } ,
  homepage = 'https://github.com/Freed-Wu/conceal.vim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'conceal.vim-' .. 'efc01869ccc2feb1c4a04e410d64dce9b3566f10',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'autoload', 'doc', 'queries' } ,
}
