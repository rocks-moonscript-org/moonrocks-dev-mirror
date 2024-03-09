local git_ref = '5bb2d0c5c0ab9780b6528fe735163df8fd6654ff'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-colortils/colortils.nvim'

rockspec_format = '3.0'
package = 'colortils.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Some color utils for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-colortils/colortils.nvim',
  license = 'GPL-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'colortils.nvim-' .. '5bb2d0c5c0ab9780b6528fe735163df8fd6654ff',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
