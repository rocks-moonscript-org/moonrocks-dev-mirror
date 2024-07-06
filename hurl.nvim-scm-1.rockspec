local git_ref = '2b2bff7f2b30fe1a583d0ecfb86735698673a67a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jellydn/hurl.nvim'

rockspec_format = '3.0'
package = 'hurl.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Run HTTP requests directly from `.hurl` files.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jellydn/hurl.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hurl.nvim-' .. '2b2bff7f2b30fe1a583d0ecfb86735698673a67a',
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
