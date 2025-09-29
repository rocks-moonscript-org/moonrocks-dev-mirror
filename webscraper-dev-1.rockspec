package = "webscraper"
version = "dev-1"
source = {
   url = "git+https://github.com/Desvelao/lua-webscraper"
}
description = {
   detailed = [[
Scrap data from web sites
]],
   homepage = "https://github.com/Desvelao/lua-webscraper",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.2",
   "lua-requests == 1.2",
   "htmlparser == 0.3.9",
   "lua-zlib == 1.2",
   "dkjson == 2.8-1",
   "busted == 2.2.0"
}
build = {
   type = "builtin",
   modules = {
      ["webscraper"] = "src/init.lua",
      ["webscraper.web_scraper.web_scraper"] = "src/web_scraper/web_scraper.lua",
      ["webscraper.web_scraper.dsl_filter"] = "src/web_scraper/dsl_filter.lua",
      ["webscraper.filters.filters.init"] = "src/filters/filters/init.lua",
      ["webscraper.filters.filters.repository.lowercase"] = "src/filters/filters/repository/lowercase.lua",
      ["webscraper.filters.filters.repository.match"] = "src/filters/filters/repository/match.lua",
      ["webscraper.filters.filters.repository.parse_date"] = "src/filters/filters/repository/parse_date.lua",
      ["webscraper.filters.filters.repository.replace"] = "src/filters/filters/repository/replace.lua",
      ["webscraper.filters.filters.repository.to_number"] = "src/filters/filters/repository/to_number.lua",
      ["webscraper.filters.filters.repository.trim"] = "src/filters/filters/repository/trim.lua",
      ["webscraper.filters.filters.repository.uppercase"] = "src/filters/filters/repository/uppercase.lua",
      ["webscraper.filters.validators.init"] = "src/filters/validators/init.lua",
      ["webscraper.filters.validators.repository.is_number"] = "src/filters/validators/repository/is_number.lua",
      ["webscraper.filters.validators.repository.is_string"] = "src/filters/validators/repository/is_string.lua",
   }
}
