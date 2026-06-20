local git_ref = 'b9e452f9c83565a1520e14f7531632160f3b0170'
local modrev = 'scm'
local specrev = '3'

local repo_url = 'https://github.com/nvim-mini/mini.move'

rockspec_format = '3.0'
package = 'mini.move'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Move any selection in any direction. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.move',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.move-' .. 'b9e452f9c83565a1520e14f7531632160f3b0170',
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
