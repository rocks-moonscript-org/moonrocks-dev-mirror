local git_ref = '0090cacf89bc52e4eddb911bc6c33b12411b95f7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/folke/ts-comments.nvim'

rockspec_format = '3.0'
package = 'ts-comments.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tiny plugin to enhance Neovim\'s native comments',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/folke/ts-comments.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ts-comments.nvim-' .. '0090cacf89bc52e4eddb911bc6c33b12411b95f7',
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
