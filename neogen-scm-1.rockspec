local git_ref = '4b22542b96712a5a901fa909b7dc749251ae1625'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/danymat/neogen'

rockspec_format = '3.0'
package = 'neogen'
version = modrev ..'-'.. specrev

description = {
  summary = 'A better annotation generator. Supports multiple languages and annotation conventions.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/danymat/neogen',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neogen-' .. '4b22542b96712a5a901fa909b7dc749251ae1625',
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
