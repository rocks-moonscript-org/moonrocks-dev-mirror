local git_ref = '6c75506e71836f34fe5c5efa322dfce3e0494e7b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/NMAC427/guess-indent.nvim'

rockspec_format = '3.0'
package = 'guess-indent.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Automatic indentation style detection for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/NMAC427/guess-indent.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'guess-indent.nvim-' .. '6c75506e71836f34fe5c5efa322dfce3e0494e7b',
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
