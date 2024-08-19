local git_ref = '2cc925246d7e5324ddf9585fad891cec73c3947b'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/neotest-plenary'

rockspec_format = '3.0'
package = 'neotest-plenary'
version = modrev ..'-'.. specrev

description = {
  summary = 'A plenary.nvim adapter for the Neotest framework',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neotest/neotest-plenary',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-plenary-' .. '2cc925246d7e5324ddf9585fad891cec73c3947b',
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
