package = "bustest"
version = "scm-1"
source = {
   url = "git+https://github.com/minetest-streets/bustest/"
}
description = {
   homepage = "https://github.com/minetest-streets/bustest",
   license = "MIT"
}
dependencies = {
    "luassert", "say"
}
build = {
   type = "builtin",
   modules = {
      ["assertions.chat.chatmessage_sent_all"] = "src/assertions/chat/chatmessage_sent_all.lua",
      ["assertions.chat.chatmessage_sent_player"] = "src/assertions/chat/chatmessage_sent_player.lua",
      ["assertions.node.node_has_alias"] = "src/assertions/node/node_has_alias.lua",
      ["assertions.node.node_has_back_texture"] = "src/assertions/node/node_has_back_texture.lua",
      ["assertions.node.node_has_bottom_texture"] = "src/assertions/node/node_has_bottom_texture.lua",
      ["assertions.node.node_has_description"] = "src/assertions/node/node_has_description.lua",
      ["assertions.node.node_has_front_texture"] = "src/assertions/node/node_has_front_texture.lua",
      ["assertions.node.node_has_left_texture"] = "src/assertions/node/node_has_left_texture.lua",
      ["assertions.node.node_has_right_texture"] = "src/assertions/node/node_has_right_texture.lua",
      ["assertions.node.node_has_top_texture"] = "src/assertions/node/node_has_top_texture.lua",
      ["assertions.node.node_registered"] = "src/assertions/node/node_registered.lua",
      minetest = "src/minetest.lua"
   }
}
