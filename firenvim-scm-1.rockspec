local git_ref = '3edc0fa3ade8e59428025f5eeaa4f1ae249997f7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/firenvim'

rockspec_format = '3.0'
package = 'firenvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Embed Neovim in Chrome, Firefox & others.',
  detailed = '',
  labels = { 'neovim', 'firefox', 'chrome' },
  homepage = 'https://github.com/glacambre/firenvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'firenvim-' .. '3edc0fa3ade8e59428025f5eeaa4f1ae249997f7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'plugin' } ,
  install = {
    conf = {
      ['..'] = 'package.json'
    }
  }
}
