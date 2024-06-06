local git_ref = '58b6ddbaa50e7ce4c3b0f5ffc0fd71241791b2a7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/windwp/windline.nvim'

rockspec_format = '3.0'
package = 'windline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Animation statusline, floating window statusline. Use lua + luv make some wind',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/windwp/windline.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'windline.nvim-' .. '58b6ddbaa50e7ce4c3b0f5ffc0fd71241791b2a7',
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
