local git_ref = 'd832925e77cef27b16011a8dfd8835f49bdcd055'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/projekt0n/github-nvim-theme'

rockspec_format = '3.0'
package = 'github-nvim-theme'
version = modrev ..'-'.. specrev

description = {
  summary = 'Github\'s Neovim themes ',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/projekt0n/github-nvim-theme',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'github-nvim-theme-' .. 'd832925e77cef27b16011a8dfd8835f49bdcd055',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'colors', 'doc', 'plugin', 'queries' } ,
}
