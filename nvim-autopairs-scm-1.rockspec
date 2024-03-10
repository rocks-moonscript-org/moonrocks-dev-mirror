local git_ref = 'c6139ca0d5ad7af129ea6c89cb4c56093f2c034a'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/windwp/nvim-autopairs'

rockspec_format = '3.0'
package = 'nvim-autopairs'
version = modrev ..'-'.. specrev

description = {
  summary = 'Autopairs for neovim written in Lua',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/windwp/nvim-autopairs',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-autopairs-' .. 'c6139ca0d5ad7af129ea6c89cb4c56093f2c034a',
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
