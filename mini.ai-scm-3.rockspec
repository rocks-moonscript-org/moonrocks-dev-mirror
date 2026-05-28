local git_ref = 'a783ce6e1a5b3bc90519f20b51f4a5f6702734af'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-mini/mini.ai'

rockspec_format = '3.0'
package = 'mini.ai'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extend and create a/i textobjects. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.ai',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.ai-' .. 'a783ce6e1a5b3bc90519f20b51f4a5f6702734af',
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
