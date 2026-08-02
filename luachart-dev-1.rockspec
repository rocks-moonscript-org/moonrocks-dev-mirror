package = "luachart"
version = "dev-1"
source = {
   url = "git://github.com/zeykatecool/luachart"
}
description = {
   summary = "Chart Rendering Library for Lua / LuaJIT",
   detailed = [[
      Renders charts to PNG files using luaPNG as the backend.
      Written in pure Lua with no external dependencies beyond luaPNG.
      Supports line, bar, scatter, histogram, and heatmap chart types.
   ]],
   homepage = "https://github.com/zeykatecool/luachart",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luapng >= 1.1"
}
build = {
   type = "builtin",
   modules = {
      ["luachart.init"] = "init.lua",
      ["luachart.canvas"] = "canvas.lua",
      ["luachart.color"] = "color.lua",
      ["luachart.font"] = "font.lua",
      ["luachart.layout"] = "layout.lua",
      ["luachart.scale"] = "scale.lua",
      ["luachart.charts.bar"] = "charts/bar.lua",
      ["luachart.charts.heatmap"] = "charts/heatmap.lua",
      ["luachart.charts.histogram"] = "charts/histogram.lua",
      ["luachart.charts.line"] = "charts/line.lua",
      ["luachart.charts.scatter"] = "charts/scatter.lua"
   }
}
