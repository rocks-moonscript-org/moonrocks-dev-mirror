local git_ref = 'ed4d6a5bbd5e479b4c4a3019d148561a2e6c1490'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/monaqa/dial.nvim'

rockspec_format = '3.0'
package = 'dial.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'enhanced increment/decrement plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/monaqa/dial.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dial.nvim-' .. 'ed4d6a5bbd5e479b4c4a3019d148561a2e6c1490',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
