local git_ref = 'cdb5b0654d3cafe61d2a845e15b2b4b0e78e752a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tjdevries/colorbuddy.nvim'

rockspec_format = '3.0'
package = 'colorbuddy.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Your color buddy for making cool neovim color schemes',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tjdevries/colorbuddy.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colorbuddy.nvim-' .. 'cdb5b0654d3cafe61d2a845e15b2b4b0e78e752a',
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
