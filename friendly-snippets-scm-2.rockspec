local git_ref = 'bb548e5ae4550a5e318b7e398a93b9af456b65e1'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/rafamadriz/friendly-snippets'

rockspec_format = '3.0'
package = 'friendly-snippets'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim snippets collection for a set of different programming languages.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rafamadriz/friendly-snippets',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'friendly-snippets-' .. 'bb548e5ae4550a5e318b7e398a93b9af456b65e1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'snippets' } ,
}
