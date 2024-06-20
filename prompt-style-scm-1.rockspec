local git_ref = 'f9d8ee1cf8d739d58870c35dc1bb0ee46b5a57c8'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/wakatime/prompt-style.lua'

rockspec_format = '3.0'
package = 'prompt-style'
version = modrev ..'-'.. specrev

description = {
  summary = 'Lua plugin for powerlevel10k style prompt and WakaTime time tracking',
  detailed = '',
  labels = { 'lua', 'lualatex', 'luatex', 'neovim', 'nerdfont', 'pandoc', 'powerlevel10k', 'prompt', 'repl', 'texlua', 'wakatime' } ,
  homepage = 'https://prompt-style.lua.readthedocs.io/',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'prompt-style.lua-' .. 'f9d8ee1cf8d739d58870c35dc1bb0ee46b5a57c8',
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
