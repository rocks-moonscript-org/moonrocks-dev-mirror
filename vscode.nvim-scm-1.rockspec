local git_ref = 'f6c88cdf9d37d5c0bb1e492a13a3b4b4cc4dd13e'
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
  dir = 'vscode.nvim-' .. 'f6c88cdf9d37d5c0bb1e492a13a3b4b4cc4dd13e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'colors' } ,
}
