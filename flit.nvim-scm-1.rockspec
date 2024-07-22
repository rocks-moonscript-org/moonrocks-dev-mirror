local git_ref = 'a9be4e76c30a128f1e51af448c8321bf8366bcd4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ggandor/flit.nvim'

rockspec_format = '3.0'
package = 'flit.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Enhanced f/t motions for leap.nvim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/ggandor/flit.nvim',
  license = 'UNLICENSE'
}

dependencies = { 'lua >= 5.1', 'leap.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'flit.nvim-' .. 'a9be4e76c30a128f1e51af448c8321bf8366bcd4',
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
