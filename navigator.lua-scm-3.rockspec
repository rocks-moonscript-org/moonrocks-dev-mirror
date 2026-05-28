local git_ref = 'f460f3d494eb0df7769ce7e51a240967219bb38e'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'navigator.lua-' .. 'f460f3d494eb0df7769ce7e51a240967219bb38e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'ftdetect', 'lsp' } ,
}
