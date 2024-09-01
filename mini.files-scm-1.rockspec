local git_ref = '58e1acfadc93f56d4c2c2a8e8d93021f4d7ff411'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.files'

rockspec_format = '3.0'
package = 'mini.files'
version = modrev ..'-'.. specrev

description = {
  summary = 'Navigate and manipulate the file system in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.files',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.files-' .. '58e1acfadc93f56d4c2c2a8e8d93021f4d7ff411',
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
