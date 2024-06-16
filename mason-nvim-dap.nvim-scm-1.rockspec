local git_ref = 'f5425eb1d0d794f0305d5eeebddabb74614683ff'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jay-babu/mason-nvim-dap.nvim'

rockspec_format = '3.0'
package = 'mason-nvim-dap.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Bridges mason.nvim with the nvim-dap plugins - making it easier to use both plugins together.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jay-babu/mason-nvim-dap.nvim',
  license = 'AGPL-3.0'
}

dependencies = { 'lua >= 5.1', 'mason.nvim', 'nvim-dap' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mason-nvim-dap.nvim-' .. 'f5425eb1d0d794f0305d5eeebddabb74614683ff',
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
