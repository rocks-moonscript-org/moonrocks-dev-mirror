local git_ref = 'dddb5d21811c319eb6e51a993d8fb44b193aae3f'
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
  dir = 'indent-blankline.nvim-' .. 'dddb5d21811c319eb6e51a993d8fb44b193aae3f',
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
