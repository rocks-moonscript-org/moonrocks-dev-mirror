local git_ref = '40701b6151f8883980c1548647116de39b763540'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/kkharji/sqlite.lua'

rockspec_format = '3.0'
package = 'sqlite.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'SQLite LuaJIT binding with a very simple api.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/kkharji/sqlite.lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'sqlite.lua-' .. '40701b6151f8883980c1548647116de39b763540',
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
