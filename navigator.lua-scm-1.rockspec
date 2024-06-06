local git_ref = '3be5241bf902b8492ce3923cb62d9b44c4831b59'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ray-x/navigator.lua'

rockspec_format = '3.0'
package = 'navigator.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'Code analysis & navigation plugin for Neovim. Make exploring LSP and Treesitter symbols a piece of cake.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ray-x/navigator.lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'navigator.lua-' .. '3be5241bf902b8492ce3923cb62d9b44c4831b59',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc' } ,
}
