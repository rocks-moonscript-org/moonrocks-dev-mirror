local git_ref = 'fca3943173f6026347f9ffc68baab39454446c3b'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/tanvirtin/monokai.nvim'

rockspec_format = '3.0'
package = 'monokai.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Monokai theme for Neovim written in Lua.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tanvirtin/monokai.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'monokai.nvim-' .. 'fca3943173f6026347f9ffc68baab39454446c3b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
