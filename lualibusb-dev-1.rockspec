package = "lualibusb"
version = "dev-1"
source = {
   url = "git://github.com/fcr--/lualibusb"
}
description = {
   summary = "Lua libusb binding",
   detailed = "Lua libusb binding written in C",
   homepage = "https://github.com/fcr--/lualibusb",
   license = "MIT",
   maintainer = "Francisco Castro <fcr@adinet.com.uy>"
}
build = {
   type = "builtin",
   modules = {
      libusb = {
         sources = "lualibusb.c",
         libraries = "usb"
      }
   }
}
