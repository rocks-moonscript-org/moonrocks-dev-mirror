local git_ref = '7136b9342aeecb675c7c16a0bde327d7fcb00a1c'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/MarkEmmons/neotest-deno'

rockspec_format = '3.0'
package = 'neotest-deno'
version = modrev ..'-'.. specrev

description = {
  summary = '🧪 Neotest adapter for Deno',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/MarkEmmons/neotest-deno',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-typescript' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-deno-' .. '7136b9342aeecb675c7c16a0bde327d7fcb00a1c',
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
