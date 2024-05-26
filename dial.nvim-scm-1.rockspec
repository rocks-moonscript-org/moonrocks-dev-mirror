local git_ref = '7af2daaaf933b0617ded0f78b49f4d5fc45f9f64'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/monaqa/dial.nvim'

rockspec_format = '3.0'
package = 'dial.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'enhanced increment/decrement plugin for Neovim.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/monaqa/dial.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dial.nvim-' .. '7af2daaaf933b0617ded0f78b49f4d5fc45f9f64',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
