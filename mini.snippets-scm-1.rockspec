local git_ref = 'c9fc2dac03fa86e976b95b62724145d7cf4d9721'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.snippets'

rockspec_format = '3.0'
package = 'mini.snippets'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Manage and expand snippets. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.snippets',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.snippets-' .. 'c9fc2dac03fa86e976b95b62724145d7cf4d9721',
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
