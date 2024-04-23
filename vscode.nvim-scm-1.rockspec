local git_ref = 'd47aab1fbe423bf14275745684205dca08366277'
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
  dir = 'vscode.nvim-' .. 'd47aab1fbe423bf14275745684205dca08366277',
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
