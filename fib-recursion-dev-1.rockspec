package = "fib-recursion"
version = "dev-1"
source = {
   url = "git+https://bitbucket.org/xsxs/apple-xcode.git"
}
description = {
   detailed = "This is a template for getting started with iOS development using GitLab and [fastlane](https://fastlane.tools/).",
   homepage = "https://bitbucket.org/xsxs/apple-xcode",
   license = "*MIT"
}
build = {
   type = "builtin",
   modules = {
      ["main"] = "main.lua"
   }
}
