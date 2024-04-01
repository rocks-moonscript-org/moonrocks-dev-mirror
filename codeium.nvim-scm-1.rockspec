local git_ref = 'a070f57c0f54bd940436b94c8b679bcad5a48811'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Exafunction/codeium.nvim'

rockspec_format = '3.0'
package = 'codeium.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A native neovim extension for Codeium',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/Exafunction/codeium.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-cmp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'codeium.nvim-' .. 'a070f57c0f54bd940436b94c8b679bcad5a48811',
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
