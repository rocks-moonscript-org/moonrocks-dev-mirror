local git_ref = '65ee9d6e6308afcd7d602e1320f727c5be63a947'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/aserowy/tmux.nvim'

rockspec_format = '3.0'
package = 'tmux.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'tmux integration for nvim features pane movement and resizing from within nvim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/aserowy/tmux.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tmux.nvim-' .. '65ee9d6e6308afcd7d602e1320f727c5be63a947',
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
