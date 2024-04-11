local git_ref = '8e557d8fb2aee41769104f1ceef1a69aac733ce1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/kndndrj/nvim-dbee'

rockspec_format = '3.0'
package = 'nvim-dbee'
version = modrev ..'-'.. specrev

description = {
  summary = 'Interactive database client for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kndndrj/nvim-dbee',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dbee-' .. '8e557d8fb2aee41769104f1ceef1a69aac733ce1',
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
