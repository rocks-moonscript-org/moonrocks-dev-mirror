local git_ref = '730189c92c6fd80eb92bb6c1886392a142dba273'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jbyuki/one-small-step-for-vimkind'

rockspec_format = '3.0'
package = 'one-small-step-for-vimkind'
version = modrev ..'-'.. specrev

description = {
  summary = 'Debug adapter for Neovim plugins',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jbyuki/one-small-step-for-vimkind',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-dap' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'one-small-step-for-vimkind-' .. '730189c92c6fd80eb92bb6c1886392a142dba273',
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
