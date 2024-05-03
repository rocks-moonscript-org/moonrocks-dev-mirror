local git_ref = '2edc808e32fbf3e0d4759bdef26a7a143a19f509'
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
  dir = 'mini.operators-' .. '2edc808e32fbf3e0d4759bdef26a7a143a19f509',
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
