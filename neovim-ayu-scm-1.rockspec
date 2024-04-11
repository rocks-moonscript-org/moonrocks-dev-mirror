local git_ref = 'e03beacbc51f1a985d7a4b69828fd7612a4151e0'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Shatur/neovim-ayu'

rockspec_format = '3.0'
package = 'neovim-ayu'
version = modrev ..'-'.. specrev

description = {
  summary = 'Ayu theme for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Shatur/neovim-ayu',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neovim-ayu-' .. 'e03beacbc51f1a985d7a4b69828fd7612a4151e0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' } ,
}
