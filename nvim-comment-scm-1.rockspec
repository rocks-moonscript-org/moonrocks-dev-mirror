local git_ref = 'e9ac16ab056695cad6461173693069ec070d2b23'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/terrortylor/nvim-comment'

rockspec_format = '3.0'
package = 'nvim-comment'
version = modrev ..'-'.. specrev

description = {
  summary = 'A comment toggler for Neovim, written in Lua',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/terrortylor/nvim-comment',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-comment-' .. 'e9ac16ab056695cad6461173693069ec070d2b23',
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
