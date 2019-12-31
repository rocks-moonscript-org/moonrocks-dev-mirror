package = "love-gltf"
version = "scm-1"
source = {
   url = "git+https://gitlab.com/Alloyed/love-gltf.git"
}
description = {
   homepage = "https://gitlab.com/Alloyed/love-gltf",
   license = "MIT"
}
dependencies = {
   "love >= 11",
   "cpml ~> scm",
}
build = {
   type = "builtin",
   modules = {
      ["gltf"] = "gltf/init.lua",
      ["gltf.asset"] = "gltf/asset.lua",
      ["gltf.defaultRenderer"] = "gltf/defaultRenderer.lua",
      ["gltf.defaultShader"] = "gltf/defaultShader.lua",
      ["gltf.dkjson"] = "gltf/dkjson.lua",
   }
}
