local git_ref = '5de8b5bdb882d2a95dd7458c3b5c18ee0754bd38'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/altermo/ultimate-autopair.nvim'

rockspec_format = '3.0'
package = 'ultimate-autopair.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A treesitter supported autopairing plugin with extensions, and much more',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/altermo/ultimate-autopair.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ultimate-autopair.nvim-' .. '5de8b5bdb882d2a95dd7458c3b5c18ee0754bd38',
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
