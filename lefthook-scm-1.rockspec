package = "lefthook"
version = "scm-1"
source = {
   url = "git://www.github.com/jshtab/lefthook"
}
description = {
   summary = "Lefthook is a library for quickly running Discord Webhooks.",
   detailed = "Lefthook is a library for quickly running Discord Webhooks.",
   homepage = "https://www.github.com/jshtab/lefthook",
   license = "ISC"
}
dependencies = {
	"luasec",
	"dkjson",
	"luasocket"
}
build = {
   type = "builtin",
   modules = {
      lefthook = "lefthook/init.lua",
      ["lefthook.Embed"] = "lefthook/Embed.lua",
      ["lefthook.Type"] = "lefthook/Type.lua",
      ["lefthook.Webhook"] = "lefthook/Webhook.lua",
      ["lefthook.WebhookBatch"] = "lefthook/WebhookBatch.lua",
      ["lefthook.WebhookForm"] = "lefthook/WebhookForm.lua",
      ["lefthook.static"] = "lefthook/static.lua"
   }
}
