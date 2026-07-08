local git_ref = '2f763720771e192bdf9d2e25bfae339930ba4231'
local modrev = 'scm'
local specrev = '10'

local repo_url = 'https://github.com/nvim-mini/mini.ai'

rockspec_format = '3.0'
package = 'mini.ai'
version = modrev ..'-'.. specrev

description = {
  summary = 'Extend and create a/i textobjects. Part of the mini.nvim suite.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-mini/mini.ai',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mini.ai-' .. '2f763720771e192bdf9d2e25bfae339930ba4231',
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
