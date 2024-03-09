local git_ref = 'bc97c132e8367efecb2ecb937d385e7dc04eb5a1'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Xuyuanp/scrollbar.nvim'

rockspec_format = '3.0'
package = 'scrollbar.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'scrollbar for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Xuyuanp/scrollbar.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'scrollbar.nvim-' .. 'bc97c132e8367efecb2ecb937d385e7dc04eb5a1',
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
