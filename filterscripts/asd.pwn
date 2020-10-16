#include <a_samp> 
#include <streamer>
#include <YSF>
#include <sscanf2>

forward OptimizeObjectsDrawDistance();
public OptimizeObjectsDrawDistance()
{
	new
	    modelid, Float:distance, Float:distance2;

	// �sszes objecten v�gigmegy�nk
	for(new i = 0, j = Streamer_GetUpperBound(STREAMER_TYPE_OBJECT); i != j; i++)
	{
		// Nem l�tez�k kihagy�sa
		if(!IsValidDynamicObject(i)) continue;

        Streamer_GetFloatData(STREAMER_TYPE_OBJECT, i, E_STREAMER_STREAM_DISTANCE, distance);
        Streamer_GetFloatData(STREAMER_TYPE_OBJECT, i, E_STREAMER_DRAW_DISTANCE, distance2);
		if(distance < 0.0 || distance2 > 300.0)
		{
			//printf("skip object: %d", i);
			continue;
		}

		// modelid lek�r�se
		modelid = Streamer_GetIntData(STREAMER_TYPE_OBJECT, i, E_STREAMER_MODEL_ID);
		// distance = �tm�r� * 25
		distance = (GetColSphereRadius(modelid) * 25.0);

		// Ha kisebb mint 100, akkor 100ra tessz�k, az apr� objectek az� ne csak kurva k�zelr�l legyenek l�that�ak
		if(distance < 100.0 && distance > 30.0)
		    distance = 100.0;

		// Ha nagyobb j�n ki mind 300, 300-ra fix�ljuk -  Kye <3
	 	else if(distance > 299.0) // 500
			distance = 299.0;

		// V�g�l be�ll�t�s
		Streamer_SetFloatData(STREAMER_TYPE_OBJECT, i, E_STREAMER_STREAM_DISTANCE, distance);
		Streamer_SetFloatData(STREAMER_TYPE_OBJECT, i, E_STREAMER_DRAW_DISTANCE, distance);
	}
	printf("<< MFR >> All objects draw distance has beeen optimized");
	//SetTimer("Lofasz", 2000, false);
}

new const
	szMat[][] =
	{
		{"{33FF33}�dv. a {FF0000}MaXXiMuM FreeRoam {33FF33}szerveren!"},
		{"K�sz�nj�k, hogy felj�tt�l, s rem�lj�k, hogy maradsz is!"},
		{"Ezen a szerver b�rmit megtal�lsz, amire sz�ks�ged van!\n"},
		{"{fff940}3 legfontosabb parancs:"},
		{"{1aff12}/help {12ffeb}- le�r�s a szerverr�l"},
		{"{1aff12}/cmds {12ffeb}- parancslista le�r�ssal egy�tt"},
		{"{1aff12}/t {12ffeb}- teleportok\n"},
		{"{08d7f2}Az igazi �lvezethez szedd le az {c1fa05}MFR Kliens{08d7f2}et!"},
		{"{08d7f2}Let�lt�shez val� inform�ci�k�rt {c1fa05}/clienthelp!\n"},
		{"{f23e08}Szerver weboldal�nak c�me: {ff0000}www.mfrserver.net"},
		{"{f23e08}Szerver TeamSpeak3 c�me: {ff0000}mfrserver.net"}
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
	format(dline, sizeof(dline), "%s\n{b700ff}Objectek sz�ma: %d\nTeleportok sz�ma: %d\nRegisztr�lt j�t�kosok: %d", dline, CountDynamicObjects(), teleports, players);
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
