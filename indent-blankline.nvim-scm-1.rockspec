local git_ref = 'd98f537c3492e87b6dc6c2e3f66ac517528f406f'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/lukas-reineke/indent-blankline.nvim'

rockspec_format = '3.0'
package = 'indent-blankline.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Indent guides for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/lukas-reineke/indent-blankline.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'indent-blankline.nvim-' .. 'd98f537c3492e87b6dc6c2e3f66ac517528f406f',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'after', 'doc' } ,
}
