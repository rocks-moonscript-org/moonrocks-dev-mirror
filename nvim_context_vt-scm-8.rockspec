local git_ref = 'fd6c4829da357b620f73607bb7ae0762fc406de9'
local modrev = 'scm'
local specrev = '8'

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
  dir = 'nvim_context_vt-' .. 'fd6c4829da357b620f73607bb7ae0762fc406de9',
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
