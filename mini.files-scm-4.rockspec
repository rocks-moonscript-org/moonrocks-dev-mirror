local git_ref = '3e247eb12ca8c05622ceb8745f9004f761b22ef8'
local modrev = 'scm'
local specrev = '4'

local repo_url = 'https://github.com/nvim-mini/mini.files'

rockspec_format = '3.0'
package = 'mini.files'
version = modrev ..'-'.. specrev

description = {
  summary = 'Navigate and manipulate the file system in Neovim. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.files',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.files-' .. '3e247eb12ca8c05622ceb8745f9004f761b22ef8',
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
