local git_ref = '9832a149bdcf0709433ca9c2c3a1c87460e98d13'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/huggingface/llm.nvim'

rockspec_format = '3.0'
package = 'llm.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'LLM powered development for Neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/huggingface/llm.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'llm.nvim-' .. '9832a149bdcf0709433ca9c2c3a1c87460e98d13',
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
