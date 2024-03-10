local git_ref = 'e4d68341a73dd56c64955058821a58295fb337b1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jbyuki/venn.nvim'

rockspec_format = '3.0'
package = 'venn.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Draw ASCII diagrams in Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jbyuki/venn.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'venn.nvim-' .. 'e4d68341a73dd56c64955058821a58295fb337b1',
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
