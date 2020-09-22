package = "hgateway-sdk"
version = "dev-1"
source = {
   url = "git+ssh://git@gitlab.com/lht-hcloud/codes/hgateway-sdk.git"
}
description = {
   summary = "[[_TOC_]]",
   detailed = [=[
[[_TOC_]]

]=],
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["hgateway.api.http.request"] = "hgateway/api/http/request.lua",
      ["hgateway.api.http.response"] = "hgateway/api/http/response.lua",
      reqtest = "reqtest.lua"
   }
}
