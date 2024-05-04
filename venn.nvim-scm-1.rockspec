local git_ref = 'b09c2f36ddf70b498281845109bedcf08a7e0de0'
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
  dir = 'venn.nvim-' .. 'b09c2f36ddf70b498281845109bedcf08a7e0de0',
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
