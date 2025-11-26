package = "PudimWeb"
version = "dev-3"
source = {
   url = "git://github.com/pessoa736/PudimWeb.git"
}
description = {
   summary = "Web framework for Lua 5.4 inspired by React/Next.js",
   detailed = [[
      PudimWeb is a web framework for Lua 5.4 with architecture
      inspired by React/Next.js. Includes file-based routing,
      functional components, hooks (useState, useEffect, useMemo,
      useContext), and support for .lx files via DaviLuaXML.
      
      Features:
      - File-based automatic routing (Next.js style)
      - Functional components with props/children
      - Hooks for state management
      - API Routes
      - Static file serving
      - CLI for project scaffolding (pudim new)
   ]],
   homepage = "https://github.com/pessoa736/PudimWeb",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4",
   "DaviLuaXML",
   "loglua",
   "luasocket"
}
build = {
   type = "builtin",
   modules = {
      PudimWeb = "PudimWeb/init.lua",
      ["PudimWeb.core.components"] = "PudimWeb/core/components.lua",
      ["PudimWeb.core.fileRouter"] = "PudimWeb/core/fileRouter.lua",
      ["PudimWeb.core.hooks"] = "PudimWeb/core/hooks.lua",
      ["PudimWeb.html"] = "PudimWeb/html/init.lua",
      ["PudimWeb.http.request"] = "PudimWeb/http/request.lua",
      ["PudimWeb.http.response"] = "PudimWeb/http/response.lua",
      ["PudimWeb.http.server"] = "PudimWeb/http/server.lua",
      ["PudimWeb.middleware.static"] = "PudimWeb/middleware/static.lua",
      ["PudimWeb.router"] = "PudimWeb/router.lua",
      ["PudimWeb.utils.json"] = "PudimWeb/utils/json.lua"
   },
   install = {
      bin = {
         pudim = "bin/pudim"
      }
   }
}
