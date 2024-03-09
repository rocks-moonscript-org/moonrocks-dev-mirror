local git_ref = '2f8e14e8dcd397f5da45fcd73d9576692906a4e3'
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
  dir = 'nvim-dbee-' .. '2f8e14e8dcd397f5da45fcd73d9576692906a4e3',
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
