local git_ref = '06bb771690bc9df0763d14769b779062d8f12bc5'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/LudoPinelli/comment-box.nvim'

rockspec_format = '3.0'
package = 'comment-box.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Clarify and beautify your comments and plain text files using boxes and lines.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/LudoPinelli/comment-box.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'comment-box.nvim-' .. '06bb771690bc9df0763d14769b779062d8f12bc5',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
