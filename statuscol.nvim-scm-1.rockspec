local git_ref = '2eaca29ef3079dedc484dbd7824ad723e8d35676'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/luukvbaal/statuscol.nvim'

rockspec_format = '3.0'
package = 'statuscol.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Status column plugin that provides a configurable \'statuscolumn\' and click handlers.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/luukvbaal/statuscol.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'statuscol.nvim-' .. '2eaca29ef3079dedc484dbd7824ad723e8d35676',
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
