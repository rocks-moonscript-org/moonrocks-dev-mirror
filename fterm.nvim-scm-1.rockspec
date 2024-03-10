local git_ref = 'd1320892cc2ebab472935242d9d992a2c9570180'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/numToStr/FTerm.nvim'

rockspec_format = '3.0'
package = 'fterm.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'No-nonsense floating terminal plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/numToStr/FTerm.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'FTerm.nvim-' .. 'd1320892cc2ebab472935242d9d992a2c9570180',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
