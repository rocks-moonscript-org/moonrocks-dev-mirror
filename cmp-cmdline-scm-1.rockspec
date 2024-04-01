local git_ref = 'd250c63aa13ead745e3a40f61fdd3470efde3923'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/hrsh7th/cmp-cmdline'

rockspec_format = '3.0'
package = 'cmp-cmdline'
version = modrev ..'-'.. specrev

description = {
  summary = 'nvim-cmp source for vim\'s cmdline',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hrsh7th/cmp-cmdline',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cmp-cmdline-' .. 'd250c63aa13ead745e3a40f61fdd3470efde3923',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after' } ,
}
