local git_ref = 'b56383d065575305e943e353e1ae6634f39f48f7'
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
  dir = 'colortils.nvim-' .. 'b56383d065575305e943e353e1ae6634f39f48f7',
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
