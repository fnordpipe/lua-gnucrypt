#include <lua.h>
#include <lauxlib.h>

#include <crypt.h>

static int glibc_crypt(lua_State *L) {
	char *password, *salt, *hash;

	password = (char *) luaL_checkstring(L, 1);
	salt = (char *) luaL_checkstring(L, 2);
	hash = crypt(password, salt);

	lua_pushstring(L, hash);
	return 1;
}

static const struct luaL_Reg gnucrypt [] = {
	{ "crypt", glibc_crypt },
	{ NULL, NULL }
};

int luaopen_gnucrypt(lua_State *L) {
	luaL_register(L, "gnucrypt", gnucrypt);
	return 1;
}
