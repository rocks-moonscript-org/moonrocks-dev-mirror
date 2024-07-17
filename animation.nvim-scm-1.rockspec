local git_ref = 'fb77091ab72ec9971aee0562e7081182527aaa6a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/anuvyklack/animation.nvim'

rockspec_format = '3.0'
package = 'animation.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'An OOP library to create animations in Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/anuvyklack/animation.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'middleclass' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'animation.nvim-' .. 'fb77091ab72ec9971aee0562e7081182527aaa6a',
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
