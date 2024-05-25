local git_ref = 'c52aa751daf62d4a9e6ee24c4a91882ef6842f99'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.surround'

rockspec_format = '3.0'
package = 'mini.surround'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim surround actions. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.surround',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.surround-' .. 'c52aa751daf62d4a9e6ee24c4a91882ef6842f99',
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
