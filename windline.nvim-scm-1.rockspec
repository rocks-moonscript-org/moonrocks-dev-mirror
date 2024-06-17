local git_ref = '47b53bb49c663f3c177b2f0d00a79bb8166a6e59'
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
  dir = 'windline.nvim-' .. '47b53bb49c663f3c177b2f0d00a79bb8166a6e59',
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
