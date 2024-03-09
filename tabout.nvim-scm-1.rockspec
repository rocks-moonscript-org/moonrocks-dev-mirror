local git_ref = '6a8f4e67a9bfc9bfc9989cc45253180598cc4339'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/abecodes/tabout.nvim'

rockspec_format = '3.0'
package = 'tabout.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'tabout plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/abecodes/tabout.nvim',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tabout.nvim-' .. '6a8f4e67a9bfc9bfc9989cc45253180598cc4339',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
