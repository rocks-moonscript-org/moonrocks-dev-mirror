local git_ref = 'c48d74a3cecf93f5adc6a7518c7ced60e6302895'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/echasnovski/mini.trailspace'

rockspec_format = '3.0'
package = 'mini.trailspace'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim: Trailspace (highlight and remove). Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/echasnovski/mini.trailspace',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.trailspace-' .. 'c48d74a3cecf93f5adc6a7518c7ced60e6302895',
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
