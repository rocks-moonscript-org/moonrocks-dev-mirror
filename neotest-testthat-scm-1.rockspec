local git_ref = '63be77b75a2ad33df39e3c4e4de10e163a21cfef'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/shunsambongi/neotest-testthat'

rockspec_format = '3.0'
package = 'neotest-testthat'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for R packages using testthat tests.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/shunsambongi/neotest-testthat',
  license = 'UNKNOW'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-r' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-testthat-' .. '63be77b75a2ad33df39e3c4e4de10e163a21cfef',
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
