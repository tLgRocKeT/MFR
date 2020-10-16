#include <a_samp> 
#include <streamer>
#include <YSF>
#include <sscanf2>

forward OptimizeObjectsDrawDistance();
public OptimizeObjectsDrawDistance()
{
	new
	    modelid, Float:distance, Float:distance2;

	// Összes objecten végigmegyünk
	for(new i = 0, j = Streamer_GetUpperBound(STREAMER_TYPE_OBJECT); i != j; i++)
	{
		// Nem létezõk kihagyása
		if(!IsValidDynamicObject(i)) continue;

        Streamer_GetFloatData(STREAMER_TYPE_OBJECT, i, E_STREAMER_STREAM_DISTANCE, distance);
        Streamer_GetFloatData(STREAMER_TYPE_OBJECT, i, E_STREAMER_DRAW_DISTANCE, distance2);
		if(distance < 0.0 || distance2 > 300.0)
		{
			//printf("skip object: %d", i);
			continue;
		}

		// modelid lekérése
		modelid = Streamer_GetIntData(STREAMER_TYPE_OBJECT, i, E_STREAMER_MODEL_ID);
		// distance = átmérõ * 25
		distance = (GetColSphereRadius(modelid) * 25.0);

		// Ha kisebb mint 100, akkor 100ra tesszük, az apró objectek azé ne csak kurva közelrõl legyenek láthatóak
		if(distance < 100.0 && distance > 30.0)
		    distance = 100.0;

		// Ha nagyobb jön ki mind 300, 300-ra fixáljuk -  Kye <3
	 	else if(distance > 299.0) // 500
			distance = 299.0;

		// Végül beállítás
		Streamer_SetFloatData(STREAMER_TYPE_OBJECT, i, E_STREAMER_STREAM_DISTANCE, distance);
		Streamer_SetFloatData(STREAMER_TYPE_OBJECT, i, E_STREAMER_DRAW_DISTANCE, distance);
	}
	printf("<< MFR >> All objects draw distance has beeen optimized");
	//SetTimer("Lofasz", 2000, false);
}

new const
	szMat[][] =
	{
		{"{33FF33}Üdv. a {FF0000}MaXXiMuM FreeRoam {33FF33}szerveren!"},
		{"Köszönjük, hogy feljöttél, s reméljük, hogy maradsz is!"},
		{"Ezen a szerver bármit megtalálsz, amire szükséged van!\n"},
		{"{fff940}3 legfontosabb parancs:"},
		{"{1aff12}/help {12ffeb}- leírás a szerverrõl"},
		{"{1aff12}/cmds {12ffeb}- parancslista leírással együtt"},
		{"{1aff12}/t {12ffeb}- teleportok\n"},
		{"{08d7f2}Az igazi élvezethez szedd le az {c1fa05}MFR Kliens{08d7f2}et!"},
		{"{08d7f2}Letöltéshez való információkért {c1fa05}/clienthelp!\n"},
		{"{f23e08}Szerver weboldalának címe: {ff0000}www.mfrserver.net"},
		{"{f23e08}Szerver TeamSpeak3 címe: {ff0000}mfrserver.net"}
	};

new dline[2048];

forward UpdateSpawnPlane(players, teleports);
public UpdateSpawnPlane(players, teleports)
{
	static
		plane = -1;

	if(plane != -1)
		DestroyDynamicObject(plane);

	plane = CreateDynamicObjectEx(19482, 2122.0444, 1292.7121, 12.3999, 0.0000, 0.0000, -30.0000);
	

    dline[0] = EOS;
	for(new i; i != sizeof(szMat); i++)
	{
		strcat(dline, szMat[i]);
		strcat(dline, "\n");
	}
	format(dline, sizeof(dline), "%s\n{b700ff}Objectek száma: %d\nTeleportok száma: %d\nRegisztrált játékosok: %d", dline, CountDynamicObjects(), teleports, players);
	SetDynamicObjectMaterialText(plane, 0, dline, 140, "Arial", 22, 1, 0xFF0000AA, 0xFF000000);

	printf("UpdateSpawnPlane");
}

new /*line[1024],*/ textname[64], languagestr[256];

stock LoadLang()
{
	new File:fLang = fopen("lang/en.txt");
	printf("fLang: %d", _:fLang);
	while(fread(fLang, dline, sizeof(dline)))
	{
		sscanf(dline, "p<=>s[64]'\"'s[256]", textname, languagestr);
		printf("%s = %s", textname, languagestr);
	}
}
