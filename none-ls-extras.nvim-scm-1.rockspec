local git_ref = '059bb6561b8f5ff99a7acc9262b557ebbe5c34ec'
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
  dir = 'none-ls-extras.nvim-' .. '059bb6561b8f5ff99a7acc9262b557ebbe5c34ec',
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
