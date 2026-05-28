package = "lua-resty-nginx-runner"
version = "scm-0"
rockspec_format = '3.0'


source = {
   url = "git://github.com/oktvn/lua-resty-nginx-runner.git",
}

description = {
   summary = "",
   homepage = "https://github.com/oktvn/lua-resty-nginx-runner",
   license = "MIT",
   maintainer = "oktvn"
}

dependencies = {
  "lua >= 5.1",
  "argparse",
  "lua-resty-nginx-confgen",
  "lua-resty-nginx-manager",
}

deploy = {
  wrap_bin_scripts = false,
}

build = {
  type = "builtin",
  modules = {
    ['resty.nginx.runner'] = 'bin/runner.lua',
  },
  install = {
    bin = {
      ['runner'] = 'bin/runner.lua'
    }
  }
}