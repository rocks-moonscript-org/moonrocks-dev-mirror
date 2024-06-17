local git_ref = 'da618e075f42793400c3ee1e59ef3ebada2cb23c'
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
  dir = 'tmux.nvim-' .. 'da618e075f42793400c3ee1e59ef3ebada2cb23c',
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
