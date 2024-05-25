local git_ref = '823267cf3b77cf9a7ae28454926eabc18fec1ba0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/chipsenkbeil/distant.nvim'

rockspec_format = '3.0'
package = 'distant.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Edit files, run programs, and work with LSP on a remote machine from the comfort of your local environment',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/chipsenkbeil/distant.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'distant.nvim-' .. '823267cf3b77cf9a7ae28454926eabc18fec1ba0',
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
