local git_ref = '5b1a927cfee45845d7d4450a1e8f2f63cf0baaac'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/tamago324/lir.nvim'

rockspec_format = '3.0'
package = 'lir.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim file explorer',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/tamago324/lir.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lir.nvim-' .. '5b1a927cfee45845d7d4450a1e8f2f63cf0baaac',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
