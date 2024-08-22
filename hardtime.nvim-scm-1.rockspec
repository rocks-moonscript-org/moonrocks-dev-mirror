local git_ref = '6513bf42cd9261669d1ee41ff8b4065dfdc53a09'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/m4xshen/hardtime.nvim'

rockspec_format = '3.0'
package = 'hardtime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin helping you establish good command workflow and habit',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/m4xshen/hardtime.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hardtime.nvim-' .. '6513bf42cd9261669d1ee41ff8b4065dfdc53a09',
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
