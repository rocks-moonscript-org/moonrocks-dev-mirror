local git_ref = 'b1230ce2993b2be38a1e22606750d05a94307380'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/David-Kunz/gen.nvim'

rockspec_format = '3.0'
package = 'gen.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin to generate text using LLMs with customizable prompts.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/David-Kunz/gen.nvim',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gen.nvim-' .. 'b1230ce2993b2be38a1e22606750d05a94307380',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
