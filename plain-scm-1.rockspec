package = "plain"
version = "scm-1"
source = {
   url = "https://github.com/zinovyev/plain/archive/master.zip"
}
description = {
   homepage = "https://github.com/zinovyev/plain",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      plain = "src/plain.lua",
      ["plain.widgets.battery"] = "src/widgets/battery.lua",
      ["plain.widgets.widget"] = "src/widgets/widget.lua"
   }
}
