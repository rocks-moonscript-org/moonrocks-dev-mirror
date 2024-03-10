local git_ref = 'c3dd43474a5fc2f266309bc04a69b74eb2524671'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/b0o/mapx.nvim'

rockspec_format = '3.0'
package = 'mapx.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A better way to create key mappings in Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/b0o/mapx.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mapx.nvim-' .. 'c3dd43474a5fc2f266309bc04a69b74eb2524671',
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
