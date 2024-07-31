local git_ref = '508b3504a350fb9a93bd0b7c0d41b8b5fc732b5e'
local modrev = 'scm'
local specrev = '1'

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
  dir = 'nvim-spider-' .. '508b3504a350fb9a93bd0b7c0d41b8b5fc732b5e',
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
