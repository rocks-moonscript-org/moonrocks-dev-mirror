local git_ref = 'c3cb0e2b0916a879c4d3dcb5737e6c046dd0afc5'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/xeluxee/competitest.nvim'

rockspec_format = '3.0'
package = 'competitest.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'CompetiTest.nvim is a Neovim plugin for Competitive Programming: it can manage and check testcases, download problems and contests from online judges and much more',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/xeluxee/competitest.nvim',
  license = 'LGPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'competitest.nvim-' .. 'c3cb0e2b0916a879c4d3dcb5737e6c046dd0afc5',
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
