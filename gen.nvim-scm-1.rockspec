local git_ref = '07fb74cf1bc533791e2c7cfca7bd3f45a3b597f9'
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
  dir = 'gen.nvim-' .. '07fb74cf1bc533791e2c7cfca7bd3f45a3b597f9',
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
