package = "kong-slack-hmac"
version = "dev-1"

source = {
   url = "git://github.com/erran/kong-slack-hmac"
}

description = {
   detailed = [[
A Kong plugin for verifying requests from Slack.
]],
   homepage = "https://github.com/erran/kong-slack-hmac",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
     ["kong.plugins.slack-hmac.handler"] = "src/kong/plugins/slack-hmac/handler.lua",
     ["kong.plugins.slack-hmac.signer"] = "src/kong/plugins/slack-hmac/signer.lua",
     ["kong.plugins.slack-hmac.schema"] = "src/kong/plugins/slack-hmac/schema.lua"
   }
}

dependencies = {
  "lua = 5.1"
}
