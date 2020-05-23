package = "pinyin"
version = "dev-1"
source = {
   url = "git+https://github.com/MissinA/pinyin.git"
}
description = {
   detailed = [[
## 代码指南
```lua
local pinyin = require'pinyin'
pinyin(chars, isString, separator)
```
@参数1为您要转换的字符串
@参数2如果为true则返回字符串,否则返回为表
@参数3为参数2的增加选项制定拼音间字符]],
   homepage = "https://github.com/MissinA/pinyin",
   license = "*** MIT ***"
}
build = {
   type = "builtin",
   modules = {
      pinyin = "pinyin.lua"
   }
}
