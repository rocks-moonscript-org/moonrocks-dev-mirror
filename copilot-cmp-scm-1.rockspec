local git_ref = '72fbaa03695779f8349be3ac54fa8bd77eed3ee3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/zbirenbaum/copilot-cmp'

rockspec_format = '3.0'
package = 'copilot-cmp'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lua plugin to turn github copilot into a cmp source',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/zbirenbaum/copilot-cmp',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'copilot.lua' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'copilot-cmp-' .. '72fbaa03695779f8349be3ac54fa8bd77eed3ee3',
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
