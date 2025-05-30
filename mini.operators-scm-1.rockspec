local git_ref = '35b12f54bd5acb860f4297fd6d12fd07b1b065e2'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.operators'

rockspec_format = '3.0'
package = 'mini.operators'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Text edit operators. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.operators',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.operators-' .. '35b12f54bd5acb860f4297fd6d12fd07b1b065e2',
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
