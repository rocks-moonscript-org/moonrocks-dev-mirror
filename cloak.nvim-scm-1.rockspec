local git_ref = '6e5bcd50bebc5cdb7cd3a00eb3d97ab7c4cc3b94'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/laytan/cloak.nvim'

rockspec_format = '3.0'
package = 'cloak.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Cloak allows you to overlay *\'s over defined patterns in defined files.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/laytan/cloak.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cloak.nvim-' .. '6e5bcd50bebc5cdb7cd3a00eb3d97ab7c4cc3b94',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
