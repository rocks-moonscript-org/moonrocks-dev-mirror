local git_ref = 'c2fd8bf4c86ec8d85bd0265074711027e640863a'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'nvim-various-textobjs-' .. 'c2fd8bf4c86ec8d85bd0265074711027e640863a',
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
