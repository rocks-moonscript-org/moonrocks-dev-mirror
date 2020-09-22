package = "hgateway-plugins"
version = "dev-1"
source = {
   url = "git+ssh://git@gitlab.com/lht-hcloud/codes/hgateway-plugins.git"
}
description = {
   detailed = [[
- [HGateway - 官方插件集](#hgateway---官方插件集)
  - [概述](#概述)]],
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["hgplugins.auth.index"] = "hgplugins/auth/index.lua",
      ["hgplugins.fee.index"] = "hgplugins/fee/index.lua",
      ["hgplugins.flowcontroll.index"] = "hgplugins/flowcontroll/index.lua",
      ["hgplugins.id.index"] = "hgplugins/id/index.lua",
      ["hgplugins.logging.index"] = "hgplugins/logging/index.lua",
      ["hgplugins.oauth2.index"] = "hgplugins/oauth2/index.lua",
      ["test.mytest"] = "test/mytest.lua",
      ["test.oo.ClassA"] = "test/oo/ClassA.lua",
      ["test.oo.ClassB"] = "test/oo/ClassB.lua",
      ["test.oo.ootest"] = "test/oo/ootest.lua",
      ["test.p.p2"] = "test/p/p2.lua",
      ["test.p1"] = "test/p1.lua",
      ["test.study"] = "test/study.lua",
      ["test.study2"] = "test/study2.lua"
   }
}
