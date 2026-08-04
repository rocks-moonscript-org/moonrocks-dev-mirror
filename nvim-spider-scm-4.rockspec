local git_ref = '38f74f733734566bec3b23a9dcf968a5a5559cd6'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/chrisgrieser/nvim-spider'

rockspec_format = '3.0'
package = 'nvim-spider'
version = modrev ..'-'.. specrev

description = {
  summary = 'Use the w, e, b motions like a spider. Move by subwords and skip insignificant punctuation.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/chrisgrieser/nvim-spider',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-spider-' .. '38f74f733734566bec3b23a9dcf968a5a5559cd6',
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
