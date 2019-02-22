#include <amxmodx>
#include <amxmisc>
#include <engine>

public plugin_init() {
register_plugin("TrackerUI.DLL Downloader","1.0.0","babii")
return PLUGIN_CONTINUE
}

precache_files(szFilename[],type) {
new szText[256], szKey[20], szValue[64]
new a, pos = 0
new ent

if (file_exists(szFilename)) {
log_amx("[*] -> Parsing file %s",szFilename)
while (read_file(szFilename,pos++,szText,sizeof(szText),a)) {
if ( szText[0] == '/' && szText[1] == '/' )
continue
if (equal(szText,""))
continue
if (parse(szText, szKey, sizeof(szKey), szValue, sizeof(szValue)) >= 1) {
if (type == 0) {
if (equali(szKey,"precache_sound")) {
precache_sound(szValue)
log_amx("[*] -> Precaching sound %s",szValue)
} else if (equali(szKey,"precache_model")) {
precache_model(szValue)
log_amx("[*] -> Precaching model %s",szValue)
} else if (equali(szKey,"precache_generic")) {
precache_generic(szValue)
log_amx("[*] -> Precaching generic %s",szValue)
} else if (equali(szKey,"precache_class")) {
ent = create_entity(szValue)
if (ent) {
DispatchSpawn(ent)
remove_entity(ent)
log_amx("[*] -> Precaching class %s",szValue)
} else {
log_amx("[*] -> Error: Failed precaching class %s",szValue)
}
}
}
}
}
} else {
log_amx("[*]-> Creating file %s",szFilename)
new genstring [48]
format(genstring,sizeof(genstring),"precache_generic bin/TrackerUI.DLL")
write_file(szFilename,genstring,-1);
}
}

public plugin_precache() {
new path[32]; get_configsdir(path,31)
new prepath[48]; format(prepath,sizeof(prepath),"%s/precache",path)
new mappath[64]; format(mappath,sizeof(mappath),"%s/maps",prepath)

new map[32]
get_mapname(map,sizeof(map))

new t1[128],t2[128]
format(t1,sizeof(t1),"%s/default.pre",prepath)
format(t2,sizeof(t2),"%s/%s.pre",mappath,map)

if (!(dir_exists(prepath))) {
log_amx("[*] -> Creating directory %s",prepath)
mkdir(prepath)
}
precache_files(t1,0)

if (!(dir_exists(mappath))) {
log_amx("[*] -> Creating directory %s",mappath)
mkdir(mappath)
}
precache_files(t2,0)

return PLUGIN_CONTINUE
}