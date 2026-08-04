local git_ref = 'dfbf0e9ccab4bad3c87961e1de3c8dc09d8f337a'
local modrev = 'scm'
local specrev = '5'

local repo_url = 'https://github.com/chrisgrieser/nvim-various-textobjs'

rockspec_format = '3.0'
package = 'nvim-various-textobjs'
version = modrev ..'-'.. specrev

description = {
  summary = 'Bundle of more than 30 new text objects for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/chrisgrieser/nvim-various-textobjs',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-various-textobjs-' .. 'dfbf0e9ccab4bad3c87961e1de3c8dc09d8f337a',
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
