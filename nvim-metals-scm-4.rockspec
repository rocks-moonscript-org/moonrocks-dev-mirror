local git_ref = 'b914d3b963582109371d0949424c3cc6758d99b8'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/scalameta/nvim-metals'

rockspec_format = '3.0'
package = 'nvim-metals'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Metals plugin for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/scalameta/nvim-metals',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-metals-' .. 'b914d3b963582109371d0949424c3cc6758d99b8',
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
