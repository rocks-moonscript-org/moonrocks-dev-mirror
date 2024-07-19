local git_ref = '9ec6db0a1dc381acb04be715f17f636909d2dcce'
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
  dir = 'colortils.nvim-' .. '9ec6db0a1dc381acb04be715f17f636909d2dcce',
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
