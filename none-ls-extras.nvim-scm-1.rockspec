local git_ref = 'f0746bf4f1a21d6e1d2002f671fb9b46d2146de7'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvimtools/none-ls-extras.nvim'

rockspec_format = '3.0'
package = 'none-ls-extras.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extra sources for none-ls.nvim. Not extensively tested, may be prone to break.',
  detailed = '',
  labels = { 'neovim', 'none-ls-sources', 'null-ls-sources', 'nvim' } ,
  homepage = 'https://github.com/nvimtools/none-ls-extras.nvim',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1', 'none-ls.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'none-ls-extras.nvim-' .. 'f0746bf4f1a21d6e1d2002f671fb9b46d2146de7',
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
