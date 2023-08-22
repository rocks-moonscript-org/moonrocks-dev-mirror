package = "apple-xcode"
version = "dev-1"
source = {
   url = "git+https://bitbucket.org/xsxs/apple-xcode.git"
}
description = {
   detailed = "This is a template for getting started with iOS development using GitLab and [fastlane](https://fastlane.tools/).",
   homepage = "https://bitbucket.org/xsxs/apple-xcode",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["users.login"] = "users/login.lua"
   }
}
