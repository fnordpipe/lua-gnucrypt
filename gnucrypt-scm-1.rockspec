package = "gnucrypt"
version = "scm-1"

description = {
	summary = "glibc crypt(3) wrapper",
	homepage = "https://github.com/fnordpipe/lua-gnucrypt",
	license = "MIT",
}

source = {
	url = "git+https://github.com/fnordpipe/lua-gnucrypt.git",
}

dependencies = {
	"lua 5.1",
}

build = {
	type = "make",
	install_pass = false,
	build_variables = {
		CFLAGS="$(CFLAGS)",
	},
	install = {
		lib = {
			["gnucrypt"] = "gnucrypt.so",
		},
	},
}
