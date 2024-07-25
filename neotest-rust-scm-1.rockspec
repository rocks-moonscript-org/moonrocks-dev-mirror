local git_ref = '0418811e1e3499b2501593f2e131d02f5e6823d4'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/rouge8/neotest-rust'

rockspec_format = '3.0'
package = 'neotest-rust'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for Rust, using cargo-nextest.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/rouge8/neotest-rust',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-rust-' .. '0418811e1e3499b2501593f2e131d02f5e6823d4',
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
