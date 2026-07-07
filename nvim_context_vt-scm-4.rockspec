local git_ref = 'b72accf0ba6772c9ae6e37f4540a81f1bc715f1a'
local modrev = 'scm'
local specrev = '4'

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
  dir = 'nvim_context_vt-' .. 'b72accf0ba6772c9ae6e37f4540a81f1bc715f1a',
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
