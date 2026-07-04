local git_ref = '92ac11c17d3350f1de63996af91927f34c185916'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'nvim_context_vt-' .. '92ac11c17d3350f1de63996af91927f34c185916',
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
