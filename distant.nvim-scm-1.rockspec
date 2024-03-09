local git_ref = 'de7288b1af6fdb2d2e7a8aa00f07a236261c2491'
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
  dir = 'distant.nvim-' .. 'de7288b1af6fdb2d2e7a8aa00f07a236261c2491',
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
