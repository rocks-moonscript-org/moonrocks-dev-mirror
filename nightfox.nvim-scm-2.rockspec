local git_ref = '26b61b1f856ec37cae3cb64f5690adb955f246a1'
local modrev = 'scm'
local specrev = '2'

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
  dir = 'nightfox.nvim-' .. '26b61b1f856ec37cae3cb64f5690adb955f246a1',
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
