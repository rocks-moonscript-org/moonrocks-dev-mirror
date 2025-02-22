local git_ref = 'eb25c62e8ddcd3029fb3e38135aba2fafe7a403e'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/cppinsights.nvim'

rockspec_format = '3.0'
package = 'cppinsights.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim extension for C++ Insights',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Freed-Wu/cppinsights.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cppinsights.nvim-' .. 'eb25c62e8ddcd3029fb3e38135aba2fafe7a403e',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
    type = 'cmake',
    copy_directories = { 'lua', 'ftplugin' } ,
    variables = {
         CFLAGS = '$(CFLAGS)',
         LIBFLAG = '$(LIBFLAG)',
         LUA_LIBDIR = '$(LUA_LIBDIR)',
         LUA_INCDIR = '$(LUA_INCDIR)',
         LIBDIR = '$(LIBDIR)',
         LUADIR = '$(LUA_LIBFILE)',
    }
}

