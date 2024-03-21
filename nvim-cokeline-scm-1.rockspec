local git_ref = '32929480b1753a5c2a99435e891da9be1e61e0b9'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/willothy/nvim-cokeline'

rockspec_format = '3.0'
package = 'nvim-cokeline'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim bufferline for people with addictive personalities',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/willothy/nvim-cokeline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-cokeline-' .. '32929480b1753a5c2a99435e891da9be1e61e0b9',
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
