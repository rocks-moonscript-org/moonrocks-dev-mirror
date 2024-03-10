local git_ref = '8c88d9716c91eaef1cdea13cb9390d8ef447dbfe'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-telescope/telescope-dap.nvim'

rockspec_format = '3.0'
package = 'telescope-dap.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Integration for nvim-dap with telescope.nvim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-telescope/telescope-dap.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-dap', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'telescope-dap.nvim-' .. '8c88d9716c91eaef1cdea13cb9390d8ef447dbfe',
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
