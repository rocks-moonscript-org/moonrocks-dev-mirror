local git_ref = '732ea6d0f868bcccd2f526be73afa46997d5a2fb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ziontee113/syntax-tree-surfer'

rockspec_format = '3.0'
package = 'syntax-tree-surfer'
version = modrev ..'-'.. specrev

description = {
  summary = 'A plugin for Neovim that helps you surf through your document and move elements around using the nvim-treesitter API.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ziontee113/syntax-tree-surfer',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'syntax-tree-surfer-' .. '732ea6d0f868bcccd2f526be73afa46997d5a2fb',
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
