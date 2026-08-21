local git_ref = 'ae11f6cb469ee5547cd0e076ecb41d74a7322cb8'
local modrev = 'scm'
local specrev = '6'

local repo_url = 'https://github.com/CRAG666/code_runner.nvim'

rockspec_format = '3.0'
package = 'code_runner.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The best code runner you could have, it is like the one in vscode but with super powers, it manages projects like in intellij but without being slow.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/CRAG666/code_runner.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'code_runner.nvim-' .. 'ae11f6cb469ee5547cd0e076ecb41d74a7322cb8',
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
