local git_ref = '56b4052f71220144689caaa2e5b66222ba5661eb'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/garymjr/nvim-snippets'

rockspec_format = '3.0'
package = 'nvim-snippets'
version = modrev ..'-'.. specrev

description = {
  summary = 'Snippet support using native neovim snippets',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/garymjr/nvim-snippets',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-snippets-' .. '56b4052f71220144689caaa2e5b66222ba5661eb',
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
