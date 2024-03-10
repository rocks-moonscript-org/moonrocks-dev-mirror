local git_ref = 'b8ae749fce17aa4c267eec80a6984130b94f80b2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/NMAC427/guess-indent.nvim'

rockspec_format = '3.0'
package = 'guess-indent.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Automatic indentation style detection for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/NMAC427/guess-indent.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'guess-indent.nvim-' .. 'b8ae749fce17aa4c267eec80a6984130b94f80b2',
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
