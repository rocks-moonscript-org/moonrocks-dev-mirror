package = "ncl-formats"
version = "dev-1"
source = {
   url = "git://github.com/TeleMidia/ncl-formats",
   tag = "v0.1",
}
description = {
   summary = "pure-lua tool template processor and a file converter for NCL documents.",
   detailed = [[
ncl-formats is a pure-lua tool for template processing and file converter for NCL documents.
For now, it can handle Jinja2 and mustache template languages
]],
   homepage = "https://github.com/TeleMidia/ncl-formats",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.2, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["jinja.additonalContent.dependences.json"] = "jinja/additonalContent/dependences/json.lua",
      ["jinja.additonalContent.dependences.lulpeg"] = "jinja/additonalContent/dependences/lulpeg.lua",
      ["jinja.additonalContent.dependences.lupa"] = "jinja/additonalContent/dependences/lupa.lua",
      ["jinja.additonalContent.dependences.pprint"] = "jinja/additonalContent/dependences/pprint.lua",
      ["jinja.additonalContent.ncl-formats"] = "jinja/additonalContent/ncl-formats.lua",
      ["jinja.slideShow.dependences.json"] = "jinja/slideShow/dependences/json.lua",
      ["jinja.slideShow.dependences.lulpeg"] = "jinja/slideShow/dependences/lulpeg.lua",
      ["jinja.slideShow.dependences.lupa"] = "jinja/slideShow/dependences/lupa.lua",
      ["jinja.slideShow.dependences.pprint"] = "jinja/slideShow/dependences/pprint.lua",
      ["jinja.slideShow.ncl-formats"] = "jinja/slideShow/ncl-formats.lua",
      ["jinja.videoRecommendation.dependences.json"] = "jinja/videoRecommendation/dependences/json.lua",
      ["jinja.videoRecommendation.dependences.lulpeg"] = "jinja/videoRecommendation/dependences/lulpeg.lua",
      ["jinja.videoRecommendation.dependences.lupa"] = "jinja/videoRecommendation/dependences/lupa.lua",
      ["jinja.videoRecommendation.dependences.pprint"] = "jinja/videoRecommendation/dependences/pprint.lua",
      ["jinja.videoRecommendation.ncl-formats"] = "jinja/videoRecommendation/ncl-formats.lua",
      ["mustache.slideShow.dependences.json"] = "mustache/slideShow/dependences/json.lua",
      ["mustache.slideShow.dependences.lustache"] = "mustache/slideShow/dependences/lustache.lua",
      ["mustache.slideShow.dependences.lustache.context"] = "mustache/slideShow/dependences/lustache/context.lua",
      ["mustache.slideShow.dependences.lustache.renderer"] = "mustache/slideShow/dependences/lustache/renderer.lua",
      ["mustache.slideShow.dependences.lustache.scanner"] = "mustache/slideShow/dependences/lustache/scanner.lua",
      ["mustache.slideShow.dependences.pprint"] = "mustache/slideShow/dependences/pprint.lua",
      ["mustache.slideShow.ncl-formats"] = "mustache/slideShow/ncl-formats.lua"
   }
}
