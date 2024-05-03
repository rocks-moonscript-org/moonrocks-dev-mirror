local git_ref = 'c89b15aee136eeb4649901552da37a404415c356'
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
  dir = 'nvim-fzf-' .. 'c89b15aee136eeb4649901552da37a404415c356',
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
