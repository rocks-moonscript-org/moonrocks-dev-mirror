local git_ref = 'd3e8b1acc095baf57af81bb5e89fe7c4359eb619'
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
  dir = 'nightfox.nvim-' .. 'd3e8b1acc095baf57af81bb5e89fe7c4359eb619',
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
