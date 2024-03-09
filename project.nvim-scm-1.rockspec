local git_ref = '8c6bad7d22eef1b71144b401c9f74ed01526a4fb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ahmedkhalf/project.nvim'

rockspec_format = '3.0'
package = 'project.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'The superior project management solution for neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ahmedkhalf/project.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'project.nvim-' .. '8c6bad7d22eef1b71144b401c9f74ed01526a4fb',
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
