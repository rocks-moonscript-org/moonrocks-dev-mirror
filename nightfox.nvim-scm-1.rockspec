local git_ref = '7557f26defd093c4e9bc17f28b08403f706f5a44'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/EdenEast/nightfox.nvim'

rockspec_format = '3.0'
package = 'nightfox.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'highly customizable theme for vim and neovim with support for lsp, treesitter and a variety of plugins.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/EdenEast/nightfox.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nightfox.nvim-' .. '7557f26defd093c4e9bc17f28b08403f706f5a44',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors', 'doc', 'plugin' } ,
}
