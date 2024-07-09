local git_ref = '66ccac7b9fc8c5305e24a2edbd701f0ed0a30442'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'elixir-tools.nvim-' .. '66ccac7b9fc8c5305e24a2edbd701f0ed0a30442',
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
