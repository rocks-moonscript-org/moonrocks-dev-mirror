local git_ref = '34c7be146a91fec3555c33fe89c7d643f6ef5cf1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/flash.nvim'

rockspec_format = '3.0'
package = 'flash.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Navigate your code with search labels, enhanced character motions and Treesitter integration',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/flash.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'flash.nvim-' .. '34c7be146a91fec3555c33fe89c7d643f6ef5cf1',
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
