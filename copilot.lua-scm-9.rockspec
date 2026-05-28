local git_ref = 'b57ee71bc6671aae055ef1911b3f72771219bb2d'
local modrev = 'scm'
local specrev = '9'

local repo_url = 'https://github.com/zbirenbaum/copilot.lua'

rockspec_format = '3.0'
package = 'copilot.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'Fully featured & enhanced replacement for copilot.vim complete with API for interacting with Github Copilot',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/zbirenbaum/copilot.lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'copilot.lua-' .. 'b57ee71bc6671aae055ef1911b3f72771219bb2d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
