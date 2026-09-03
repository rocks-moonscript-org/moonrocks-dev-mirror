local git_ref = '3b1ee1854c1067c34cad2423eb78e280d4069e01'
local modrev = 'scm'
local specrev = '3'

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
  dir = 'indent-blankline.nvim-' .. '3b1ee1854c1067c34cad2423eb78e280d4069e01',
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
