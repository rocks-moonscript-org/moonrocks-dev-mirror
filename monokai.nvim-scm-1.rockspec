local git_ref = 'b8bd44d5796503173627d7a1fc51f77ec3a08a63'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'monokai.nvim-' .. 'b8bd44d5796503173627d7a1fc51f77ec3a08a63',
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
