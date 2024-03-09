local git_ref = 'a5fc69240869c0fee8ff176bc9e4efdf8bdfb596'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/theHamsta/nvim-dap-virtual-text'

rockspec_format = '3.0'
package = 'nvim-dap-virtual-text'
version = modrev ..'-'.. specrev

description = {
  summary = 'Adds virtual text support to nvim-dap.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/theHamsta/nvim-dap-virtual-text',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'nvim-dap', 'nvim-treesitter' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dap-virtual-text-' .. 'a5fc69240869c0fee8ff176bc9e4efdf8bdfb596',
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
