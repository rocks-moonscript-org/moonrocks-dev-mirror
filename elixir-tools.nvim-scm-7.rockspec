local git_ref = 'cf04ad26128b2491f8a1ac506e274773d06cd552'
local modrev = 'scm'
local specrev = '7'

local repo_url = 'https://github.com/elixir-tools/elixir-tools.nvim'

rockspec_format = '3.0'
package = 'elixir-tools.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for Elixir',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/elixir-tools/elixir-tools.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'elixir-tools.nvim-' .. 'cf04ad26128b2491f8a1ac506e274773d06cd552',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'queries' } ,
}
