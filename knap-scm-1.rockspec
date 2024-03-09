local git_ref = 'd4ea571d2d4e139d288b758c5bab31788d30eea3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/frabjous/knap'

rockspec_format = '3.0'
package = 'knap'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for creating live-updating-as-you-type previews of LaTeX, markdown, and other files in the viewer of your choice.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/frabjous/knap',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'knap-' .. 'd4ea571d2d4e139d288b758c5bab31788d30eea3',
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
