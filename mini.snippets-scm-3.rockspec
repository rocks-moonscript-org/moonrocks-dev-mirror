local git_ref = '9a08aa14e02abb790c823a622d7d6c736cbbe65a'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-mini/mini.snippets'

rockspec_format = '3.0'
package = 'mini.snippets'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Manage and expand snippets. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.snippets',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.snippets-' .. '9a08aa14e02abb790c823a622d7d6c736cbbe65a',
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
