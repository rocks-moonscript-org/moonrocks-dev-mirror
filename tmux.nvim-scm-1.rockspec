local git_ref = '53ea7eab504730e7e8397fd2ae0133053d56afc8'
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
  dir = 'tmux.nvim-' .. '53ea7eab504730e7e8397fd2ae0133053d56afc8',
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
