local git_ref = '1420fb9e07b1d80cc6d87e7d90827fb2c1109cb3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/altermo/ultimate-autopair.nvim'

rockspec_format = '3.0'
package = 'ultimate-autopair.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A treesitter supported autopairing plugin with extensions, and much more',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/altermo/ultimate-autopair.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ultimate-autopair.nvim-' .. '1420fb9e07b1d80cc6d87e7d90827fb2c1109cb3',
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
