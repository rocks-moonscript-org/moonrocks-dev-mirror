local git_ref = 'b2942f546c28fb27525dbdad8656549b9a28c846'
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
  dir = 'neogen-' .. 'b2942f546c28fb27525dbdad8656549b9a28c846',
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
