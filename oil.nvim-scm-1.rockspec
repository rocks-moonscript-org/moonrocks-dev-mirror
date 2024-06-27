local git_ref = '65c53dbe4f2140236590a7568a5f22a77d16be39'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/stevearc/oil.nvim'

rockspec_format = '3.0'
package = 'oil.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim file explorer: edit your filesystem like a buffer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/stevearc/oil.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'oil.nvim-' .. '65c53dbe4f2140236590a7568a5f22a77d16be39',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'syntax' } ,
}
