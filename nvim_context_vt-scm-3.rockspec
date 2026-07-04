local git_ref = '96a9aee6e8d3d0ceb4c25ce0d9e73781d66fcb6f'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/andersevenrud/nvim_context_vt'

rockspec_format = '3.0'
package = 'nvim_context_vt'
version = modrev ..'-'.. specrev

description = {
  summary = 'Virtual text context for neovim treesitter',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/andersevenrud/nvim_context_vt',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim_context_vt-' .. '96a9aee6e8d3d0ceb4c25ce0d9e73781d66fcb6f',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
