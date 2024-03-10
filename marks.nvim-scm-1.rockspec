local git_ref = '74e8d01b2a2131b6e46354cffc553aa7f81bcf5b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/chentoast/marks.nvim'

rockspec_format = '3.0'
package = 'marks.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A better user experience for viewing and interacting with Vim marks.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/chentoast/marks.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'marks.nvim-' .. '74e8d01b2a2131b6e46354cffc553aa7f81bcf5b',
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
