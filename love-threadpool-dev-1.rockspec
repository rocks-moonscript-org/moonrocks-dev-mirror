rockspec_format = "3.0"
package = "love-threadpool"
version = "dev-1"
source = {
  url = "https://imagicthecat.thul.fr/fossils/love-threadpool/zip/trunk/love-threadpool-dev.zip"
}

description = {
  summary = "An abstraction over LÖVE threads.",
  detailed = "It implements a way to distribute and synchronize operations, from the main thread to secondary threads.",
  homepage = "https://imagicthecat.thul.fr/fossils/love-threadpool",
  license = "MIT"
}

dependencies = {
  "lua == 5.1"
}
