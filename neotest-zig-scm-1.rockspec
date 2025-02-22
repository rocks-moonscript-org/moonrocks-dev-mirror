local git_ref = 'c7a1a39626fa90e639fb640b6322739060a2acf3'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/lawrence-laz/neotest-zig'

rockspec_format = '3.0'
package = 'neotest-zig'
version = modrev ..'-'.. specrev

description = {
  summary = 'Test runner for Zig in Neovim using Neotest backend.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/lawrence-laz/neotest-zig',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'plenary.nvim', 'tree-sitter-zig' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-zig-' .. 'c7a1a39626fa90e639fb640b6322739060a2acf3',
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
