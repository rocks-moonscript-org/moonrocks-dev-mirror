local git_ref = '69fa45f8bcde5aaf436b43ff208c36d7c6ee5b42'
local modrev = 'scm'
local specrev = '33'

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
  dir = 'copilot.lua-' .. '69fa45f8bcde5aaf436b43ff208c36d7c6ee5b42',
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
