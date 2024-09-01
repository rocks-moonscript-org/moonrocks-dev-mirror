local git_ref = '4d9d297c2409c8ebc715da7f1d7705a221564555'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/jackMort/ChatGPT.nvim'

rockspec_format = '3.0'
package = 'chatgpt.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'ChatGPT Neovim Plugin: Effortless Natural Language Generation with OpenAI\'s ChatGPT API',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/jackMort/ChatGPT.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'nui.nvim', 'plenary.nvim', 'trouble.nvim', 'telescope.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ChatGPT.nvim-' .. '4d9d297c2409c8ebc715da7f1d7705a221564555',
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
