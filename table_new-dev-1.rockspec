package = "table_new"
version = "dev-1"
source = {
	url = "git+https://github.com/darkwiiplayer/table_new",
}
description = {
	homepage = "http://github.com/darkwiiplayer/table_new",
	license = "unlicense"
}
build = {
	type = "builtin",
	modules = {
		['table.new'] = {
			sources = "table/new.c"
		}
	}
}
