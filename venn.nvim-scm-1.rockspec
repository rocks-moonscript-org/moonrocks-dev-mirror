local git_ref = 'a5430d75875acbe93e9685cdeb78c6eb2a329ed5'
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
  dir = 'venn.nvim-' .. 'a5430d75875acbe93e9685cdeb78c6eb2a329ed5',
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
