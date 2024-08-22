local git_ref = '1cae7b7153ae98dcf1b11173a443ac1b6d8e3d49'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/kosayoda/nvim-lightbulb'

rockspec_format = '3.0'
package = 'nvim-lightbulb'
version = modrev ..'-'.. specrev

description = {
  summary = 'VSCode\'s lightbulb for neovim\'s built-in LSP.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kosayoda/nvim-lightbulb',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-lightbulb-' .. '1cae7b7153ae98dcf1b11173a443ac1b6d8e3d49',
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
