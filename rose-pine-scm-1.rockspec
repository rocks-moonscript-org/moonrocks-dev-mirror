local git_ref = 'b6fe88c3282cf9f117a3e836d761c2d78d02f417'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rose-pine/neovim'

rockspec_format = '3.0'
package = 'rose-pine'
version = modrev ..'-'.. specrev

description = {
  summary = 'Soho vibes for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rose-pine/neovim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neovim-' .. 'b6fe88c3282cf9f117a3e836d761c2d78d02f417',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
