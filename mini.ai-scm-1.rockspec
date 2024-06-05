local git_ref = '7859b6344f5cee567a94f173859d25e20ba1a77e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.ai'

rockspec_format = '3.0'
package = 'mini.ai'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extend and create a/i textobjects. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.ai',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.ai-' .. '7859b6344f5cee567a94f173859d25e20ba1a77e',
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
