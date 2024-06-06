local git_ref = '6c5bfe44a6c7523350cd706e6b3b8101166eed99'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'code_runner.nvim-' .. '6c5bfe44a6c7523350cd706e6b3b8101166eed99',
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
