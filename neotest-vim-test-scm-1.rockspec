local git_ref = '75c4228882ae4883b11bfce9b8383e637eb44192'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/neotest-vim-test'

rockspec_format = '3.0'
package = 'neotest-vim-test'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for vim-test',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/nvim-neotest/neotest-vim-test',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1', 'neotest', 'plenary.nvim', 'vim-test' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-vim-test-' .. '75c4228882ae4883b11bfce9b8383e637eb44192',
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
