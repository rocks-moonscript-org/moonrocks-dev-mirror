local git_ref = '336e84b9e43c0effb735b08798ffac382920053b'
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
  dir = 'none-ls-extras.nvim-' .. '336e84b9e43c0effb735b08798ffac382920053b',
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
