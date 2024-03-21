local git_ref = '7a9d45de08fecd23a04aca1f96688d744830029e'
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
  dir = 'lir.nvim-' .. '7a9d45de08fecd23a04aca1f96688d744830029e',
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
