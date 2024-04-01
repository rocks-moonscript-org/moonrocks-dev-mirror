local git_ref = '4fe3e696a90f183d4dbbb432ddb79155c6d4c99b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Mofiqul/vscode.nvim'

rockspec_format = '3.0'
package = 'vscode.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim/Vim color scheme inspired by Dark+ and Light+ theme in Visual Studio Code',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Mofiqul/vscode.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vscode.nvim-' .. '4fe3e696a90f183d4dbbb432ddb79155c6d4c99b',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
