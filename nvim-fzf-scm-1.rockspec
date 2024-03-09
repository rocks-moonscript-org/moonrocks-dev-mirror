local git_ref = 'bd095495146a2a827774ad3ad1ef0cc843b5e257'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/vijaymarupudi/nvim-fzf'

rockspec_format = '3.0'
package = 'nvim-fzf'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Lua API for using fzf in neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/vijaymarupudi/nvim-fzf',
  license = 'AGPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-fzf-' .. 'bd095495146a2a827774ad3ad1ef0cc843b5e257',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
