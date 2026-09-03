local git_ref = '99848daf801789dbebe2192b475eb887d375002c'
local modrev = 'scm'
local specrev = '2'

local repo_url = 'https://github.com/hakonharnes/img-clip.nvim'

rockspec_format = '3.0'
package = 'img-clip.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Effortlessly embed images into any markup language, like LaTeX, Markdown or Typst.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hakonharnes/img-clip.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'img-clip.nvim-' .. '99848daf801789dbebe2192b475eb887d375002c',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
