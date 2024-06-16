local git_ref = 'd3d83292c15cb8a72e1e421ddf5a0aac7812cb9c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/noice.nvim'

rockspec_format = '3.0'
package = 'noice.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/noice.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'nvim-notify' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'noice.nvim-' .. 'd3d83292c15cb8a72e1e421ddf5a0aac7812cb9c',
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
