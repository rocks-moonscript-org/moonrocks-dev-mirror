local git_ref = 'b537c29c6d435f8925a7927020b1327653ae0a26'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/luarocks-build-autotools'

rockspec_format = '3.0'
package = 'luarocks-build-autotools'
version = modrev ..'-'.. specrev

description = {
  summary = 'A luarocks build module for autotools',
  detailed = '',
  labels = { 'autotools', 'luarocks' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/luarocks-build-autotools',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'luarocks', 'luafilesystem' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'luarocks-build-autotools-' .. 'b537c29c6d435f8925a7927020b1327653ae0a26',
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
