#if !defined SERVER_VERSION
    #error "Fordítasd az \"nmss.pwn\" fájlt, az \"NMSS_config.pwn\" magában nem átfordítható!"
#endif

native gpci(playerid, const serial[], maxlen);

#define WEAPON_NIGHTVISION              44
#define WEAPON_INFRARED               	45

#define floatrandom(%1) \
    floatmul(floatdiv(float(random(cellmax)), float(cellmax - 1)), %1)
/* HIBÁS FOS PAWN!!!!!!!!
#define mysql_query(%1,%2) \
	session[queries]++,mysql_pquery(%1,%2,"","")

#define mysql_query(%1,%2,%3) \
	session[queries]++,mysql_pquery(%1,%2,%3,"")

#define mysql_query(%1,%2,%3,%4) \
	session[queries]++,mysql_pquery(%1,%2,%3,%4)
*/
stock cache_get_row_int(row, idx)
{
    new variable;
	cache_get_value_index_int(row, idx, variable);
	return variable;
}

new
    g_szaPlayerNames[MAX_PLAYERS][MAX_PLAYER_NAME + 1],
    BitArray:g_baAllowedWeapon[MAX_PLAYERS]<50>;

new
	gs_iVehicleID,
	gs_szKimenet[155];

// Mihez mit
stock Float:GetAngleToPoint(Float:fDestX, Float:fDestY, Float:fPointX, Float:fPointY)
    return atan2((fDestY - fPointY), (fDestX - fPointX)) + 270.0;

Float:Clamp360(Float:fAngle)
{
	new
		roundedone;

	roundedone = floatround(fAngle);
	roundedone = roundedone / 360;

	if (fAngle >= 360.0)
		return fAngle - (roundedone * 360.0);

	if (fAngle < 0.0)
		return 360.0 + fAngle - (roundedone * 360.0);

	return fAngle;
}

stock CreateZoneSquare(Float:x, Float:y, Float:sinus_multiplier)
{
    return GangZoneCreate(  x + (sinus_multiplier * floatsin(-45.0, degrees)),
                            y + (sinus_multiplier * floatcos(-225.0, degrees)),
                            x + (sinus_multiplier * floatsin(-225.0, degrees)),
                            y + (sinus_multiplier * floatcos(-45.0, degrees)));
}

stock CreatePlayerZoneSquare(playerid, Float:x, Float:y, Float:sinus_multiplier)
{
    return CreatePlayerGangZone(playerid,  x + (sinus_multiplier * floatsin(-45.0, degrees)),
                            y + (sinus_multiplier * floatcos(-225.0, degrees)),
                            x + (sinus_multiplier * floatsin(-225.0, degrees)),
                            y + (sinus_multiplier * floatcos(-45.0, degrees)));
}

stock CountSetBits(i)
{
	i = i - ((i >> 1) & 0x55555555);
	i = (i & 0x33333333) + ((i >> 2) & 0x33333333);
	return (((i + (i >> 4)) & 0x0F0F0F0F) * 0x01010101) >> 24;
}

stock get_int_1_pos(i)
{
	new
		n = -1;
	if(i & 0xffff0000)
	{
		n += 16;
		i >>= 16;
	}

	if(i & 0x0000ff00)
	{
		n += 8;
		i >>= 8;
	}

	if(i & 0x000000f0)
	{
		n += 4;
	 	i >>= 4;
	}

	if(i & 0x0000000c)
	{
		n += 2;
		i >>= 2;
	}
	return n + i;
}

stock DeleteEkezet(const str[])
{
	new
	    szEscaped[128];
	strcat(szEscaped, str);
	for(new i, j = strlen(szEscaped) ; i < j; i++)
	{
		switch(szEscaped[i])
		{
			case 'á': szEscaped[i] = 'a';
			case 'é': szEscaped[i] = 'e';
			case 'ö', 'ó', 'õ': szEscaped[i] = 'o';
			case 'ü', 'ú', 'û': szEscaped[i] = 'u';
			case 'í': szEscaped[i] = 'i';
			case 'Á': szEscaped[i] = 'A';
			case 'É': szEscaped[i] = 'E';
			case 'Ö', 'Ó', 'Õ': szEscaped[i] = 'O';
			case 'Ü', 'Û', 'Ú': szEscaped[i] = 'U';
			case 'Í': szEscaped[i] = 'I';
		}
	}
	return szEscaped;
}

stock IsValidHex(character)
{
	character |= 0x20;
	return ('a' <= character <= 'f' || '0' <= character <= '9');
}

stock CheckTextdrawStringLen(tdstr[])
{
	new
	    i,
	    skip,
	    len;

	while(tdstr[i] != '\0')
	{
		if(skip != 0)
		{
			skip--;
			i++;
			continue;
		}

		if(tdstr[i] == '~')
			skip = 3;

		i++;
		len ++;

	}
	return len;
}

stock FIXES_valstr(dest[], value, bool:pack = false)
{
    // format can't handle cellmin properly
    static const cellmin_value[] = !"-2147483648";

    if (value == cellmin)
        pack && strpack(dest, cellmin_value, 12) || strunpack(dest, cellmin_value, 12);
    else
        format(dest, 12, "%d", value) && pack && strpack(dest, dest, 12);
}
#define valstr FIXES_valstr

stock __pName__SetPlayerName(playerid, _name[], bool:savevars = true)
{
	new
		retVal = SetPlayerName(playerid, _name);
	if(savevars)
	{
		if(retVal > 0)
		{
            g_szaPlayerNames[playerid][0] = EOS;
            strcat(g_szaPlayerNames[playerid], _name, MAX_PLAYER_NAME);
//            Audio_RenamePlayer(playerid, _name);
		}
	}
	return retVal;
}

#if defined _ALS_SetPlayerName
	#undef SetPlayerName
#else
	#define _ALS_SetPlayerName
#endif
#define SetPlayerName __pName__SetPlayerName
/*
stock GetPlayerVersionEx(playerid, version[], len = sizeof(version), bool:getraksamp = false)
{
	new
		szVersion[32];
    GetPlayerVersion(playerid, szVersion, sizeof(szVersion));
	if(!getraksamp && !strcmp(szVersion, RAKSAMP_VERSION, false))
	{
		szVersion = FAKECLIENT_VERSION;
	}
	format(version, len, szVersion);
	return 1;
}
#define GetPlayerVersion GetPlayerVersionEx
*/
/* Anti Money Cheat */

stock GivePlayerMoneyEx(playerid, cash, honnan[], bool:bSkip = false)
{
	#pragma unused bSkip
	#pragma unused honnan
	
	SetPVarInt(playerid, "Money", GetPVarInt(playerid, "Money") + cash);
 	return GivePlayerMoney(playerid, cash);
}


	

/*
	new
	    give;
	if(!bSkip)
	{
		// Ha pozitív
		if(penz > 0)
		{
			// Egy milió alatt megkajpa a dupláját
			if(penz < 1000000)
			{
			    give = penz * 2;
			}
		}
		else
		{
			// Pénz levonásná meg csak a felit vonja le
			give = penz / 2;
		}

		printf("original: %d, atszamolt: %d", penz, give);
	}
	else
	{
		give = penz;
	}
*/
	

/*
forward @GivePlayerMoney(playerid, penz);
public @GivePlayerMoney(playerid, penz)
{
	return GivePlayerMoneyEx(playerid, penz, false);
}
*/

stock SetPlayerMoneyEx(playerid, penz)
{
	ResetPlayerMoney(playerid);
	SetPVarInt(playerid, "Money", penz);
	return GivePlayerMoney(playerid, penz);
}

#define GetPlayerMoneyEx(%1) \
	GetPVarInt(%1, "Money")

stock ResetPlayerMoneyEx(playerid)
{
	DeletePVar(playerid, "Money");
	return ResetPlayerMoney(playerid);
}

stock A_ResetPlayerWeapons(playerid)
{
	Bit_SetAll(g_baAllowedWeapon[playerid], false);
	Bit_Set(g_baAllowedWeapon[playerid], 0, true);
	Bit_Set(g_baAllowedWeapon[playerid], 46, true);
	return ResetPlayerWeapons(playerid);
}
#define ResetPlayerWeapons A_ResetPlayerWeapons

/*
stock A_PutPlayerInVehicle(playerid, vehicleid, seatid)
{
	if(GetPVarType(playerid, "FavRadioStation")) SetTimerEx("SetFavRadioStation", 200, false, "d", playerid);
	return PutPlayerInVehicle(playerid, vehicleid, seatid);
}
#define PutPlayerInVehicle A_PutPlayerInVehicle
*/
stock A_PlayAudioStreamForPlayer(playerid, url[], Float:posX = 0.0, Float:posY = 0.0, Float:posZ = 0.0, Float:distance = 50.0, usepos = 0)
{
	if(GetPVarInt(playerid, "Level") > 2 || IsPlayerAdmin(playerid))
	{
		SetPVarString(playerid, "Stream", url);
	}
	return PlayAudioStreamForPlayer(playerid, url, posX, posY, posZ, distance, usepos);
}
#define PlayAudioStreamForPlayer A_PlayAudioStreamForPlayer

stock A_SetPlayerSkin(playerid, skin)
{
	if(skin == 74) skin = 0;
	return SetPlayerSkin(playerid, skin);
}
#define SetPlayerSkin A_SetPlayerSkin

stock A_SetSpawnInfo(playerid, team, skin, Float:x, Float:y, Float:z, Float:rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo)
{
	if(skin == 74) skin = 0; // MFR Kliens crashfix
	Bit_Set(g_baAllowedWeapon[playerid], weapon1, true);
	Bit_Set(g_baAllowedWeapon[playerid], weapon2, true);
	Bit_Set(g_baAllowedWeapon[playerid], weapon3, true);
	Bit_Set(g_baAllowedWeapon[playerid], 0, true);
	Bit_Set(g_baAllowedWeapon[playerid], 46, true);
	return SetSpawnInfo(playerid, team, skin, x, y, z, rotation, weapon1, weapon1_ammo, weapon2, weapon2_ammo, weapon3, weapon3_ammo);
}
#define SetSpawnInfo A_SetSpawnInfo

stock A_CreateExplosion(Float:fX, Float:fY, Float:fZ, type, Float:fRadius, worldid = -1)
{
	if(worldid == -1) return CreateExplosion(fX, fY, fZ, type, fRadius);
	
	foreach(Player, i)
	{
		if(GetPlayerVirtualWorld(i) == worldid)
		    CreateExplosionForPlayer(i, fX, fY, fZ, type, fRadius);
	}
	return 1;
}
#define CreateExplosion A_CreateExplosion

/* Bug Fixes */

SetPlayerSkillLevelEx(playerid, weaponid, skill)
{
    g_pWeaponSkill[playerid][weaponid] = skill;
	return SetPlayerSkillLevel(playerid, weaponid, skill);
}

// Vehicle flags
enum  (<<= 1)
{
	e_NO_RAND_COLOR_1 = 1,
	e_NO_RAND_COLOR_2,
	e_BONNET_STATUS,
	e_BOOT_STATUS,
	e_STEREO_STATUS,
	e_NO_TELE,
	e_RESPAWNED,
}

#if !defined UVS
	new
	    g_iVehicleFlags[MAX_VEHICLES],
	    g_iVehicleSpawnColor[MAX_VEHICLES][2],
	    g_iVehicleSpawnPanitjob[MAX_VEHICLES],
	    g_iVehicleInterior[MAX_VEHICLES char],
		g_iVehicleSpawnWorld[MAX_VEHICLES],
	    g_iCarExplodeTimer[MAX_VEHICLES] = {-1, ...};
	    
	#define IsValidDynamicVehicle IsValidVehicle
	#define IsDynamicVehicleStreamedIn IsVehicleStreamedIn
	#define GetDynamicVehicleSpawnInfo GetVehicleSpawnInfo
	#define GetDynamicVehiclePos GetVehiclePos
	#define SetDynamicVehiclePos SetVehiclePos
	#define GetDynamicVehicleZAngle GetVehicleZAngle
	#define GetDynamicVehicleRotationQuat GetVehicleRotationQuat
	#define SetDynamicVehicleZAngle SetVehicleZAngle
	#define GetDynamicVehDistanceFromPoint GetVehicleDistanceFromPoint
	#define SetDynamicVehParamsForPlayer SetVehicleParamsForPlayer
//	#define SetDynamicVehicleParamsEx SetVehicleParamsEx
//	#define GetDynamicVehicleParamsEx GetVehicleParamsEx
	#define GetDynamicVehParamsSirenState GetVehicleParamsSirenState
	#define SetDynamicVehParamsCarDoors SetVehicleParamsCarDoors
	#define GetDynamicVehParamsCarDoors GetVehicleParamsCarDoors
	#define SetDynamicVehParamsCarWindows SetVehicleParamsCarWindows
	#define GetDynamicVehParamsCarWindows GetVehicleParamsCarWindows
	#define SetDynamicVehicleToRespawn SetVehicleToRespawn
	#define LinkDynamicVehicleToInterior LinkVehicleToInterior
	#define GetDynamicVehicleInterior GetVehicleInterior
	#define AddDynamicVehicleComponent AddVehicleComponent
	#define RemoveDynamicVehicleComponent RemoveVehicleComponent
	#define ChangeDynamicVehicleColor ChangeVehicleColor
	#define GetDynamicVehicleColor GetVehicleColor
	#define ChangeDynamicVehiclePaintjob ChangeVehiclePaintjob
	#define GetDynamicVehiclePaintjob GetVehiclePaintjob
	#define SetDynamicVehicleHealth SetVehicleHealth
	#define GetDynamicVehicleHealth GetVehicleHealth
	#define AttachTrailerToDynamicVehicle AttachTrailerToVehicle
	#define DetachTrailerFromDynamicVeh DetachTrailerFromVehicle
	#define IsTrailerAttachedToDynamicVeh IsTrailerAttachedToVehicle
	#define GetDynamicVehicleTrailer GetVehicleTrailer
	#define SetDynamicVehicleNumberPlate SetVehicleNumberPlate
	#define GetDynamicVehicleNumberPlate GetVehicleNumberPlate
	#define GetDynamicVehicleModel GetVehicleModel
	#define GetDynamicVehComponentInSlot GetVehicleComponentInSlot
	#define RepairDynamicVehicle RepairVehicle
	#define GetDynamicVehicleVelocity GetVehicleVelocity
	#define SetDynamicVehicleVelocity SetVehicleVelocity
	#define SetDynamicVehAngularVelocity SetVehicleAngularVelocity
	#define GetDynamicVehicleDamageStatus GetVehicleDamageStatus
	#define UpdateDynamicVehDamageStatus UpdateVehicleDamageStatus
	#define SetDynamicVehicleVirtualWorld SetVehicleVirtualWorld
	#define GetDynamicVehicleVirtualWorld GetVehicleVirtualWorld
	#define GetPlayerSurfingDynamicVehID GetPlayerSurfingVehicleID
	#define PutPlayerInDynamicVehicle PutPlayerInVehicle
	#define GetPlayerDynamicVehicleID GetPlayerVehicleID
	#define IsPlayerInDynamicVehicle IsPlayerInVehicle
	#define IsPlayerInAnyDynamicVehicle IsPlayerInAnyVehicle
	#define IsDynamicVehicleOccupied IsVehicleOccupied
	#define PlayerSpectateDynamicVehicle PlayerSpectateVehicle

	//// Vehicle Params Fix ////
	// GetVehicleParamsEx javítása; bonnet & boot-al már jó értékkel tér vissza.
	stock A_SetVehicleParamsEx(vehicleid, a_engine, a_lights, a_alarm, a_doors, a_bonnet, a_boot, a_objective)
	{
		if(a_bonnet)
		{
	        g_iVehicleFlags[vehicleid] |= e_BONNET_STATUS;
		}
		else g_iVehicleFlags[vehicleid] &= ~e_BONNET_STATUS;

		if(a_boot)
		{
	        g_iVehicleFlags[vehicleid] |= e_BOOT_STATUS;
		}
		else g_iVehicleFlags[vehicleid] &= ~e_BOOT_STATUS;

	    return SetVehicleParamsEx(vehicleid, a_engine, a_lights, a_alarm, a_doors, a_bonnet, a_boot, a_objective);
	}
	#define SetDynamicVehicleParamsEx A_SetVehicleParamsEx

	stock A_GetVehicleParamsEx(vehicleid, &a_engine, &a_lights, &a_alarm, &a_doors, &a_bonnet, &a_boot, &a_objective)
	{
		GetVehicleParamsEx(vehicleid, a_engine, a_lights, a_alarm, a_doors, a_bonnet, a_boot, a_objective);
		a_bonnet = (g_iVehicleFlags[vehicleid] >> 4 & 0x1);
		a_boot = (g_iVehicleFlags[vehicleid] >> 3 & 0x1);
		return 1;
	}
	#define GetDynamicVehicleParamsEx A_GetVehicleParamsEx

	stock CountDynamicVehicles()
	{
		new count;
		for(new i; i != MAX_VEHICLES; i++)
		{
			if(IsValidVehicle(i)) count++;
		}
		return count;
	}
#else

	enum
	{
		// Default shits.. From past
	    VEHICLE_DATA_FLAGS = 0,
		VEHICLE_DATA_SPAWNCOLOR_1 = 1,
		VEHICLE_DATA_SPAWNCOLOR_2,
		VEHICLE_DATA_SPAWN_PAINTJOB,
		VEHICLE_DATA_SPAWN_INTERIOR,

		// Objects
		VEHICLE_DATA_VEHICLE_OBJECT,

		// Explode timer
		VEHICLE_DATA_EXPLODE_TIMER,

		// Just for size..
	    VEHICLE_FLAG_SIZE
	}
#endif

enum
{
	e_PICKUP_TYPE_DEFAULT = 0,
	e_PICKUP_TYPE_HOUSE = 1,
    e_PICKUP_TYPE_BIZNIS,
    e_PICKUP_TYPE_HORSESHOE,
    e_PICKUP_TYPE_OYSTER,
    e_PICKUP_TYPE_DEATH_MONEY,
}

stock A_CreateVehicle(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, color1, color2, respawntime = 600, addsiren = 0, worldid = 0)
{
	new c1 = (color1 == -1) ? (RandomColor) : (color1);
	new c2 = (color2 == -1) ? (RandomColor) : (color2);

	new
		flags;
    if(color1 != -1) flags |= e_NO_RAND_COLOR_1;
    if(color2 != -1) flags |= e_NO_RAND_COLOR_2;
	#if defined UVS
		gs_iVehicleID = CreateDynamicVehicle(modelid, spawn_x, spawn_y, spawn_z, z_angle, c1, c2, respawntime, addsiren, worldid);

		new
		    tempvar[VEHICLE_FLAG_SIZE];
		tempvar[VEHICLE_DATA_FLAGS] = flags;
		tempvar[VEHICLE_DATA_SPAWNCOLOR_1] = c1;
		tempvar[VEHICLE_DATA_SPAWNCOLOR_2] = c2;
		tempvar[VEHICLE_DATA_SPAWN_PAINTJOB] = 4;
		tempvar[VEHICLE_DATA_SPAWN_INTERIOR] = 0;
		tempvar[VEHICLE_DATA_VEHICLE_OBJECT] = -1;
		tempvar[VEHICLE_DATA_EXPLODE_TIMER] = -1;

		Streamer_SetArrayData(STREAMER_TYPE_VEHICLE, gs_iVehicleID, E_STREAMER_EXTRA_ID, tempvar);
	#else
		gs_iVehicleID = CreateVehicle(modelid, spawn_x, spawn_y, spawn_z, z_angle, c1, c2, respawntime, addsiren);
	    if(!(0 <= gs_iVehicleID < sizeof(g_iVehicleFlags)) || !(-1 <= color1 <= 255) || !(-1 <= color2 <= 255)) return 0;

	    g_iVehicleFlags[gs_iVehicleID] = flags;
	    g_iVehicleSpawnColor[gs_iVehicleID][0] = c1;
	    g_iVehicleSpawnColor[gs_iVehicleID][1] = c2;
        g_iVehicleSpawnPanitjob[gs_iVehicleID] = 4;
		g_iVehicleInterior{gs_iVehicleID} = 0;
	    g_iVehicleSpawnWorld[gs_iVehicleID] = worldid;
	    g_iCarExplodeTimer[gs_iVehicleID] = -1;
	    
	    if(worldid) SetVehicleVirtualWorld(gs_iVehicleID, worldid);
	#endif
    return gs_iVehicleID;
}
#if !defined UVS
	#define CreateVehicle A_CreateVehicle
#endif
#define CreateDynamicVehicle A_CreateVehicle

#if !defined UVS
	stock A_AddStaticVehicle(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, color1, color2, addsiren = 0)
	{
		new c1 = (color1 == -1) ? (RandomColor) : (color1);
		new c2 = (color2 == -1) ? (RandomColor) : (color2);

		gs_iVehicleID = AddStaticVehicle(modelid, spawn_x, spawn_y, spawn_z, z_angle, c1, c21);
	    if(!(0 <= gs_iVehicleID < sizeof(g_iVehicleFlags)) || !(-1 <= color1 <= 255) || !(-1 <= color2 <= 255)) return 0;

		new
			flags;
	    if(color1 != -1) flags |= e_NO_RAND_COLOR_1;
	    if(color2 != -1) flags |= e_NO_RAND_COLOR_2;

	    g_iVehicleFlags[gs_iVehicleID] = flags;
	    g_iVehicleSpawnColor[gs_iVehicleID][0] = c1;
	    g_iVehicleSpawnColor[gs_iVehicleID][1] = c2;
        g_iVehicleSpawnPanitjob[gs_iVehicleID] = 4;
		g_iVehicleInterior{gs_iVehicleID} = 0;
	    g_iVehicleSpawnWorld[gs_iVehicleID] = 0;
	    g_iCarExplodeTimer[gs_iVehicleID] = -1;
		return gs_iVehicleID;
	}
	#define AddStaticVehicle A_AddStaticVehicle
	
	stock A_AddStaticVehicleEx(modelid, Float:spawn_x, Float:spawn_y, Float:spawn_z, Float:z_angle, color1, color2, respawn_delay/*, addsiren = 0*/)
	{
		new c1 = (color1 == -1) ? (RandomColor) : (color1);
		new c2 = (color2 == -1) ? (RandomColor) : (color2);

		gs_iVehicleID = AddStaticVehicleEx(modelid, spawn_x, spawn_y, spawn_z, z_angle, c1, c2, respawn_delay);
	    if(!(0 <= gs_iVehicleID < sizeof(g_iVehicleFlags)) || !(-1 <= color1 <= 255) || !(-1 <= color2 <= 255)) return 0;

		new
			flags;
	    if(color1 != -1) flags |= e_NO_RAND_COLOR_1;
	    if(color2 != -1) flags |= e_NO_RAND_COLOR_2;

	    g_iVehicleFlags[gs_iVehicleID] = flags;
	    g_iVehicleSpawnColor[gs_iVehicleID][0] = c1;
	    g_iVehicleSpawnColor[gs_iVehicleID][1] = c2;
        g_iVehicleSpawnPanitjob[gs_iVehicleID] = 4;
		g_iVehicleInterior{gs_iVehicleID} = 0;
	    g_iVehicleSpawnWorld[gs_iVehicleID] = 0;
	    g_iCarExplodeTimer[gs_iVehicleID] = -1;
		return gs_iVehicleID;
	}
	#define AddStaticVehicleEx A_AddStaticVehicleEx
#endif

stock GetVehicleFlags(vehicleid)
{
	#if defined UVS
		if(!IsValidDynamicVehicle(vehicleid)) return 0;

		new tempvar[VEHICLE_FLAG_SIZE];
		Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

		return tempvar[VEHICLE_DATA_FLAGS];
	#else
		if(!IsValidVehicle(vehicleid)) return 0;

		return g_iVehicleFlags[vehicleid];
	#endif
}

stock SetVehicleFlags(vehicleid, flags)
{
	#if defined UVS
		new tempvar[VEHICLE_FLAG_SIZE];
		Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

		tempvar[VEHICLE_DATA_FLAGS] = flags;
		Streamer_SetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);
	#else
		if(!IsValidVehicle(vehicleid)) return;

		g_iVehicleFlags[vehicleid] = flags;
	#endif
}

stock GetVehicleSpawnColor(vehicleid, &color1, &color2)
{
	#if defined UVS
		new tempvar[VEHICLE_FLAG_SIZE];
		Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

		color1 = tempvar[VEHICLE_DATA_SPAWNCOLOR_1];
		color2 = tempvar[VEHICLE_DATA_SPAWNCOLOR_2];
	#else
		if(!IsValidVehicle(vehicleid)) return;

		color1 = g_iVehicleSpawnColor[vehicleid][0];
		color2 = g_iVehicleSpawnColor[vehicleid][1];
	#endif
}

stock SetVehicleSpawnColor(vehicleid, color1, color2)
{
	#if defined UVS
		new tempvar[VEHICLE_FLAG_SIZE];
		Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

		tempvar[VEHICLE_DATA_SPAWNCOLOR_1] = color1;
		tempvar[VEHICLE_DATA_SPAWNCOLOR_2] = color2;
	#else
		if(!IsValidVehicle(vehicleid)) return;

		g_iVehicleSpawnColor[vehicleid][0] = color1;
		g_iVehicleSpawnColor[vehicleid][1] = color2;
	#endif
}

stock GetVehicleSpawnPaintjob(vehicleid)
{
	#if defined UVS
		new tempvar[VEHICLE_FLAG_SIZE];
		Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

		return tempvar[VEHICLE_DATA_SPAWN_PAINTJOB];
	#else
		if(!IsValidVehicle(vehicleid)) return;

		return g_iVehicleSpawnPanitjob[vehicleid];
	#endif
}

stock GetVehicleSpawnInterior(vehicleid)
{
	#if defined UVS
		new tempvar[VEHICLE_FLAG_SIZE];
		Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

		return tempvar[VEHICLE_DATA_SPAWN_INTERIOR];
	#else
		if(!IsValidVehicle(vehicleid)) return 0;

		return g_iVehicleInterior{vehicleid};
	#endif
}

stock GetVehicleVehicleObject(vehicleid)
{
	new tempvar[VEHICLE_FLAG_SIZE];
	Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

	return tempvar[VEHICLE_DATA_VEHICLE_OBJECT];
}

stock SetVehicleVehicleObject(vehicleid, objectid)
{
	new tempvar[VEHICLE_FLAG_SIZE];
	Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

	tempvar[VEHICLE_DATA_VEHICLE_OBJECT] = objectid;
	Streamer_SetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);
}

stock GetVehicleExplodeTimer(vehicleid)
{
	#if defined UVS
		new tempvar[VEHICLE_FLAG_SIZE];
		Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

		return tempvar[VEHICLE_DATA_EXPLODE_TIMER];
	#else
		if(!IsValidVehicle(vehicleid)) return 0;

		return g_iCarExplodeTimer[vehicleid];
	#endif
}

stock SetVehicleExplodeTimer(vehicleid, timerid)
{
	#if defined UVS
		new tempvar[VEHICLE_FLAG_SIZE];
		Streamer_GetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);

		tempvar[VEHICLE_DATA_EXPLODE_TIMER] = timerid;
		Streamer_SetArrayData(STREAMER_TYPE_VEHICLE, vehicleid, E_STREAMER_EXTRA_ID, tempvar);
	#else
		if(!IsValidVehicle(vehicleid)) return;

		g_iCarExplodeTimer[vehicleid] = timerid;
	#endif
}

stock A_DestroyVehicle(vehicleid, bool:checkobjects = true)
{
	if(checkobjects && vehicleid != -1 && vehicleid != 65535)
	{
		new
		    x;
		for(new i; i != MAX_VEH_OBJECT; i++)
		{
 			if(gVehicleObject[vehicleid][i] == INVALID_OBJECT_ID) continue;
			//printf("DestroyVehicle() slot %d -> %d", i, gVehicleObject[vehicleid][i]);
			DestroyDynamicObject(gVehicleObject[vehicleid][i]);
	        gVehicleObject[vehicleid][i] = INVALID_OBJECT_ID;
		}

		foreach(Player, j)
		{
			if(GetPVarInt(j, "AttachVehicleID") != vehicleid) continue;

			for(x = 0; x != MAX_VEH_OBJECT; x++)
			{
				gPlayerVehicleObjectID[j][x] = 0;
				gPlayerVehicleObject[j][x] = INVALID_OBJECT_ID;
			}
		}
	}
	
	Bit_Set(gIsHouseCar, vehicleid, false);
    ResetExplodeTimer(vehicleid);
	#if defined UVS
	return DestroyDynamicObject(vehicleid);
	#else
	return DestroyVehicle(vehicleid);
	#endif
}
#define DestroyDynamicVehicle A_DestroyVehicle

#if defined UVS
	stock ResetExplodeTimer(vehicleid)
	{
		new timerid = GetVehicleExplodeTimer(vehicleid);
		if(timerid != -1)
		{
			KillTimer(timerid);
			SetVehicleExplodeTimer(vehicleid, -1);
		}
		return 1;
	}
#else
	stock ResetExplodeTimer(vehicleid)
	{
		if(vehicleid > sizeof(g_iCarExplodeTimer)) return 1;
		if(g_iCarExplodeTimer[vehicleid] != -1)
		{
			KillTimer(g_iCarExplodeTimer[vehicleid]);
			g_iCarExplodeTimer[vehicleid] = -1;
		}
		return 1;
	}
#endif

stock FormatNumber(iNum, const szChar[] = ".")
{
    new
        szStr[16];
    format(szStr, sizeof(szStr), "%d", iNum);

    for(new iLen = strlen(szStr) - 3; iLen > 0; iLen -= 3)
    {
        strins(szStr, szChar, iLen);
    }
    return szStr;
}

/* Gangzone */
stock gcs_bf_givePlayerWeapon(playerid, weaponid, ammo)
{
	new
		ammo2;
 	Bit_Set(g_baAllowedWeapon[playerid], weaponid, true);
	GetPlayerWeaponData(playerid, GetWeaponSlot(weaponid), ammo2, ammo2);
	if(ammo2 + ammo > 65532)
	{
		return GivePlayerWeapon(playerid, weaponid, 65532 - ammo2);
	}
	else if(ammo2 + ammo < 0)
	{
		return GivePlayerWeapon(playerid, weaponid, 0 - ammo2);
	}
	return GivePlayerWeapon(playerid, weaponid, ammo);
}
#define GivePlayerWeapon gcs_bf_givePlayerWeapon

A_SetPlayerSpecialAction(playerid, actionid)
{
	if(actionid == SPECIAL_ACTION_USEJETPACK)
	    g_pOtherFlags[playerid] |= e_JETPACK;

	return SetPlayerSpecialAction(playerid, actionid);
}
#define SetPlayerSpecialAction A_SetPlayerSpecialAction

stock KickEx(playerid, reason[], time = KICK_TIME)
{
	SetTimerEx("KickPlayer", time, false, "d", playerid);
	g_pOtherFlags[playerid] |= e_KICKED;
	
	printf("Kick %s(%d) - %s", pName(playerid), playerid, reason);
}

stock GetMaxHealth(playerid)
{
	return (IsClient(playerid)) ? (176) : (100);
}

stock GetWeaponShotSQLIdFromWeaponid(weaponid)
{
	switch(weaponid)
	{
		case WEAPON_COLT45: return 0;
		case WEAPON_SILENCED: return 1;
		case WEAPON_DEAGLE: return 2;
		case WEAPON_SHOTGUN: return 3;
		case WEAPON_SAWEDOFF: return 4;
		case WEAPON_SHOTGSPA: return 5;
		case WEAPON_UZI: return 6;
		case WEAPON_MP5: return 7;
		case WEAPON_AK47: return 8;
		case WEAPON_M4: return 9;
		case WEAPON_TEC9: return 10;
		case WEAPON_RIFLE: return 11;
		case WEAPON_SNIPER: return 12;
		case WEAPON_MINIGUN: return 13;
		default:
		{
			//printf("ASSERTATION FAILED!! GetWeaponShotSQLIdFromWeaponid - weaponid = %d", weaponid);
			return -1;
		}
	}
	return -1;
}
stock A_SpawnPlayer(playerid)
{
	SetPlayerPos(playerid, 0.0, 0.0, 0.0);
	g_PlayerData[playerid] &= ~e_FALLED;
	return SpawnPlayer(playerid);
}
#define SpawnPlayer A_SpawnPlayer

stock Float:GetDistance2D(Float:x1, Float:y1, Float:x2, Float:y2)
{
	new
		Float:distance_x = x1 - x2,
		Float:distance_y = y1 - y2;
	return floatsqroot((distance_x * distance_x) + (distance_y * distance_y));
}

stock Float:GetDistance3D(Float:x1, Float:y1, Float:z1, Float:x2, Float:y2, Float:z2)
{
	new
		Float:distance_x = x1 - x2,
		Float:distance_y = y1 - y2,
		Float:distance_z = z1 - z2;
	return floatsqroot((distance_x * distance_x) + (distance_y * distance_y) + (distance_z * distance_z));
}

stock StripNewLine(string[]) // Y_Less
{
	new
		len = strlen(string);
	if (string[0] == 0) return ;
	if ((string[len - 1] == '\n') || (string[len - 1] == '\r'))
	{
		string[len - 1] = 0;
		if (string[0]==0) return ;
		if ((string[len - 2] == '\n') || (string[len - 2] == '\r')) string[len - 2] = 0;
	}
}

stock ConvertNewLine(string[])
{
	for(new i, j = strlen(string) - 1; i != j; i++)
	{
		if(string[i] == '\\' && string[i + 1] == 'n')
		{
			string[i] = ' ';
			string[i + 1] = '\n';
		}
	}
}

stock PlaySoundForPlayersInRange(soundid, Float:range, Float:x, Float:y, Float:z)
{
	foreach(Player, i)
	{
		if(!IsPlayerInRangeOfPoint(i, range, x, y, z)) continue;
		PlayerPlaySound(i, soundid, x, y, z);
	}
	return 1;
}

stock gcs_bf_PlayerplaySound(playerid, soundid, Float:playeridx = 0.0, Float:playeridy = 0.0, Float:playeridz = 0.0)
{
	if(playeridx == 0.0)
	{
		new
			Float:tmppos[3];
		GetPlayerPos(playerid, tmppos[0], tmppos[1], tmppos[2]);
		return PlayerPlaySound(playerid, soundid, tmppos[0], tmppos[1], tmppos[2]);
	}
	return PlayerPlaySound(playerid, soundid, playeridx, playeridy, playeridz);
}
#define PlayerPlaySound gcs_bf_PlayerplaySound

forward @GivePlayerScore(playerid, score);
public @GivePlayerScore(playerid, score) return GivePlayerScore(playerid, score);

stock GivePlayerScore(playerid, score)
{
	if(!IsPlayerConnected(playerid)) return 0;
	/*
	// Ha 100 alatt van az XP, 2x annyit fog kapni
	if(score <= 100) score *= 2;
	*/
	
	static
	    s_szString[64];
	new
	    xp = GetPlayerScore(playerid) + score,
	    bool:bMaxLevel = g_pSzint{playerid} == 50;
	SetPlayerScore(playerid, xp);

	if(!bMaxLevel && g_aiXPsEgyben[g_pSzint{playerid}] <= xp)
	{
        g_pSzint{playerid}++;
		format(query, sizeof(query), "UPDATE `players` SET `szint` = %d WHERE `reg_id` = %d", g_pSzint{playerid}, PlayerInfo[playerid][pRegID]);
	    mysql_pquery(gSQL, query);

		new Float:fX;
		
		// Ha max levelt elérte
		if(g_pSzint{playerid} == 50)
		{
			fX = 577;
			SendClientMessagef(playerid, COLOR_WHITE, "{00FFFF} .::Szintlépés::. {FFD700}Gratulálunk! Elérted a maximum szintet!");

			//TextDrawTextSize(g_XPPos[playerid], pb_percent(490.0, 70.0, float(100), float(100)), 0.0);
		}
		else
		{
			if(g_aiXPsEgyben[g_pSzint{playerid}] > 100000) fX = 592;
			else fX = 577;

			SendClientMessagef(playerid, COLOR_WHITE, "{00FFFF} .::Szintlépés::. {FFD700}Gratulálunk! Szintet léptél, új szinted: {" #XCOLOR_RED "}%d", g_pSzint{playerid});
			/*
			// XP csík frissítése
			new
			    val = xp;
			for(new i; i != g_pSzint{playerid}; i++)
			{
		        val -= g_aiXPs[i];
			}

			TextDrawTextSize(g_XPPos[playerid], pb_percent(490.0, 70.0, float(g_aiXPs[g_pSzint{playerid}]), float(val)), 0.0);
			*/
		}

		// Szint textdraw frissítése
		#if defined YSF
		PlayerTextDrawSetPos(playerid, g_SzintText[playerid], fX, 404.0);
		#endif
	    format(s_szString, sizeof(s_szString), "%d", g_pSzint{playerid});
		PlayerTextDrawSetString(playerid, g_SzintText[playerid], s_szString);       //if(!(g_pOtherFlags[playerid] & e_NO_TEXTDRAWS))

		if(!(g_pTDFlags[playerid] & e_NOTD_XPSZINT & e_NOTD_XPCSIK))
		{
		  	if(!(g_pOtherFlags[playerid] & e_NO_TEXTDRAWS))
			{
				PlayerTextDrawShow(playerid, g_SzintText[playerid]);
			}
		}
	}

	else if(g_pSzint{playerid} == 50)
	{
        //TextDrawTextSize(g_XPPos[playerid], pb_percent(490.0, 70.0, float(100), float(100)), 0.0);
		//format(s_szString, sizeof(s_szString), "~w~XP: ~b~~h~~h~~h~%d", xp);
	}

    bMaxLevel= g_pSzint{playerid} == 50;
	// Basszátok meg..
	if(!bMaxLevel)
	{
		// XP csík frissítése
		new
		    val = xp;
		for(new i; i != g_pSzint{playerid}; i++)
		{
	        val -= g_aiXPs[i];
		}

		PlayerTextDrawTextSize(playerid, g_XPPos[playerid], pb_percent(490.0, 70.0, float(g_aiXPs[g_pSzint{playerid}]), float(val)), 0.0);
		format(s_szString, sizeof(s_szString), "~w~XP: ~b~~h~~h~~h~%d~w~/~r~~h~%d", xp, g_aiXPsEgyben[g_pSzint{playerid}]);
	}
	else
	{
		PlayerTextDrawTextSize(playerid, g_XPPos[playerid], pb_percent(490.0, 70.0, float(100), float(100)), 0.0);
		format(s_szString, sizeof(s_szString), "~w~XP: ~b~~h~~h~~h~%d", xp);
	}
	
	if(!(g_pOtherFlags[playerid] & e_NO_TEXTDRAWS) && !(g_pTDFlags[playerid] & e_NOTD_XPCSIK) ) PlayerTextDrawShow(playerid, XP_BonusText[playerid]);
	PlayerTextDrawSetString(playerid, g_XPText[playerid], s_szString);
	
	valstr(s_szString, score);
	new
	    len = 446 - (strlen(s_szString) * 8);

	// +XP szöveg létrehozása
	if(GetPVarType(playerid, "XP_TD"))
	{
        PlayerTextDrawHide(playerid, XP_BonusText[playerid]);
		KillTimer(GetPVarInt(playerid, "XP_TD"));
	}

	#if defined YSF
	PlayerTextDrawSetPos(playerid, XP_BonusText[playerid], float(len), 410.0);
	#endif

	if(IsNegative(score))
	    format(s_szString, sizeof(s_szString), "%d XP", score), PlayerTextDrawColor(playerid, XP_BonusText[playerid], COLOR_RED);
	else
		format(s_szString, sizeof(s_szString), "+%d XP", score), PlayerTextDrawColor(playerid, XP_BonusText[playerid], 16711935);
		
	PlayerTextDrawSetString(playerid, XP_BonusText[playerid], s_szString);
	if(!(g_pOtherFlags[playerid] & e_NO_TEXTDRAWS)) PlayerTextDrawShow(playerid, XP_BonusText[playerid]);

	SetPVarInt(playerid, "XP_TD", SetTimerEx("XP_Text_Hide", 4500, false, "d", playerid));
	PlayerPlaySound(playerid, 1058);
	return 1;
}

forward XP_Text_Hide(playerid);
public XP_Text_Hide(playerid)
{
	PlayerTextDrawHide(playerid, XP_BonusText[playerid]);
	
 	DeletePVar(playerid, "XP_TD");
	return 1;
}

/* Egyéb funkciók ( Saját )*/
stock bool:IsPlayerInWater(playerid)
{
	new
		anim = GetPlayerAnimationIndex(playerid);
	return (((anim >=  1538) && (anim <= 1542)) || (anim == 1544) || (anim == 1250) || (anim == 1062));
}

stock bool:IsPlayerAimingEx(playerid)
{
	new
		anim = GetPlayerAnimationIndex(playerid);
	return (((anim >= 1160) && (anim <= 1163)) || (anim == 1167) || (anim == 1365) || (anim == 1643) || (anim == 1453) || (anim == 220));
}

#define IsValidWeapon(%1) \
    (1 <= %1 <= 18 || 22 <= %1 <= 46)

#define IsValidSkin(%1) \
    (-1 < %1 <= 311)

// Based on default.ide & a_samp.inc
stock GetWeaponIDFromModel(weaponid)
{
	switch(weaponid)
	{
		case 321: return WEAPON_DILDO;
		case 322: return WEAPON_DILDO2;
		case 323: return WEAPON_VIBRATOR;
		case 324: return WEAPON_VIBRATOR2;
		case 325: return WEAPON_FLOWER;
		case 326: return WEAPON_CANE;
		// case 327: gun_boxwee
		// case 328: gun_boxbig
		// case 330: cellphone
		case 331: return WEAPON_BRASSKNUCKLE;
		case 333: return WEAPON_GOLFCLUB;
		case 334: return WEAPON_NITESTICK;
		case 335: return WEAPON_KNIFE;
		case 336: return WEAPON_BAT;
		case 337: return WEAPON_SHOVEL;
		case 338: return WEAPON_POOLSTICK;
		case 339: return WEAPON_KATANA;
		case 341: return WEAPON_CHAINSAW;
		// case 340: Skateboard
		case 342: return WEAPON_GRENADE;
		case 343: return WEAPON_TEARGAS;
		case 344: return WEAPON_MOLTOV;
		case 346: return WEAPON_COLT45;
		case 347: return WEAPON_SILENCED;
		case 348: return WEAPON_DEAGLE;
		case 349: return WEAPON_SHOTGUN;
		case 350: return WEAPON_SAWEDOFF;
		case 351: return WEAPON_SHOTGSPA;
		case 352: return WEAPON_UZI;
		case 353: return WEAPON_MP5;
		case 355: return WEAPON_AK47;
		case 356: return WEAPON_M4;
		case 357: return WEAPON_RIFLE;
		case 358: return WEAPON_SNIPER;
		case 359: return WEAPON_ROCKETLAUNCHER;
		case 360: return WEAPON_HEATSEEKER;
		case 361: return WEAPON_FLAMETHROWER;
		case 362: return WEAPON_MINIGUN;
		case 363: return WEAPON_SATCHEL;
		case 364: return WEAPON_BOMB;
		case 365: return WEAPON_SPRAYCAN;
		case 366: return WEAPON_FIREEXTINGUISHER;
		case 367: return WEAPON_CAMERA;
		case 368: return WEAPON_NIGHTVISION;
		case 369: return WEAPON_INFRARED;
		// case 370: Jetpack
		case 371: return WEAPON_PARACHUTE;
		case 372: return WEAPON_TEC9;
		// case 373: Armour
	}
	return 0;
}

//by Double-O-Seven
stock GetWeaponModel(weaponid)
{
    new
        _ObjectModel = 0;
    switch( weaponid )
    {
        case 1: _ObjectModel = 331;
        case 2: _ObjectModel = 333;
        case 3: _ObjectModel = 334;
        case 4: _ObjectModel = 335;
        case 5: _ObjectModel = 336;
        case 6: _ObjectModel = 337;
        case 7: _ObjectModel = 338;
        case 8: _ObjectModel = 339;
        case 9: _ObjectModel = 341;
        case 10: _ObjectModel = 321;
        case 11: _ObjectModel = 322;
        case 12: _ObjectModel = 323;
        case 13: _ObjectModel = 324;
        case 14: _ObjectModel = 325;
        case 15: _ObjectModel = 326;
        case 16: _ObjectModel = 342;
        case 17: _ObjectModel = 343;
        case 18: _ObjectModel = 344;
        case 22: _ObjectModel = 346;
        case 23: _ObjectModel = 347;
        case 24: _ObjectModel = 348;
        case 25: _ObjectModel = 349;
        case 26: _ObjectModel = 350;
        case 27: _ObjectModel = 351;
        case 28: _ObjectModel = 352;
        case 29: _ObjectModel = 353;
        case 30: _ObjectModel = 354;
        case 31: _ObjectModel = 356;
        case 32: _ObjectModel = 372;
        case 33: _ObjectModel = 357;
        case 34: _ObjectModel = 358;
        case 35: _ObjectModel = 359;
        case 36: _ObjectModel = 360;
        case 37: _ObjectModel = 361;
        case 38: _ObjectModel = 362;
        case 39: _ObjectModel = 363;
        case 40: _ObjectModel = 364;
        case 41: _ObjectModel = 365;
        case 42: _ObjectModel = 366;
        case 43: _ObjectModel = 367;
        case 44: _ObjectModel = 368;
        case 45: _ObjectModel = 369;
        case 46: _ObjectModel = 371;
    }
    return _ObjectModel;
}

stock bool:IsVehicleToy(vehicleid)
{
    switch(GetDynamicVehicleModel(vehicleid))
    {
        case 435, 441, 449, 450, 464, 465, 569, 570, 501, 564, 584, 590, 591, 594, 606, 607, 610, 611,
			 537, 538: return true;
    }
    return false;
}

stock bool:IsLicensePlate(vehicleid)
{
    switch(GetDynamicVehicleModel(vehicleid))
    {
        case 406, 417, 425, 430, 432, 435, 441, 444, 446, 447, 449, 450,
		452, 453, 454, 457, 460, 464, 465, 468, 469, 471, 472, 473, 476,
		481, 484, 485, 486, 487, 488, 493, 494, 497, 501, 502, 503, 509,
		510, 511, 512, 513, 514, 515, 519, 520, 522, 528, 530, 531, 532,
		537, 538, 539, 548, 553, 563, 564, 568, 569, 570, 571, 572, 573,
		577, 583, 584, 590, 591, 592, 593, 594, 595, 601, 606, 607, 608,
		610, 611: return false;
    }
    return true;
}

static const
	g_ucMaxPassengers[] =
	{
		3, 1, 1, 1, 3, 3, 0, 1, 1, 3, 1, 1, 1, 3, 1, 1,       		 // 400->415
		3, 1, 3, 1, 3, 3, 1, 1, 1, 0, 3, 3, 3, 1, 0, 8,              // 416->431
		0, 1, 1, 255, 1, 8, 3, 1, 3, 0, 1, 1, 1, 3, 0, 1,            // 432->447
		0, 1, 255, 1, 0, 0, 0, 1, 1, 1, 3, 3, 1, 1, 1,               // 448->462
		1, 1, 1, 3, 3, 1, 1, 3, 1, 0, 0, 1, 1, 0, 1, 1,              // 463->478
		3, 1, 0, 3, 1, 0, 0, 0, 3, 1, 1, 3, 1, 3, 0, 1,              // 479->494
		1, 1, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 0, 0,              // 495->510
		1, 0, 0, 1, 1, 3, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1,              // 511->526
		1, 1, 3, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 3, 1,                 // 527->541
		1, 1, 1, 1, 3, 3, 1, 1, 3, 3, 1, 0, 1, 1, 1, 1,              // 542->557
		1, 1, 3, 3, 1, 1, 0, 1, 3, 3, 0, 255, 1, 0, 0,               // 558->572
		1, 0, 1, 1, 1, 1, 3, 3, 1, 3, 0, 255, 3, 1, 1, 1,            // 573->588
		1, 255, 255, 1, 1, 1, 0, 3, 3, 3, 1, 1, 1, 1, 1,             // 589->604
		3, 1, 255, 255, 255, 3, 255, 255                             // 605->611
	};

#define VEHICLE_NONE         0
#define VEHICLE_CAR          1
#define VEHICLE_BOAT         2
#define VEHICLE_TRAIN        3
#define VEHICLE_TRAM         4
#define VEHICLE_HELI         5
#define VEHICLE_PLANE        6
#define VEHICLE_BIKE         7
#define VEHICLE_MONSTERTRUCK 8
#define VEHICLE_QUADBIKE     9
#define VEHICLE_BMX          10
#define VEHICLE_TRAILER      11

static const
	gs_vehicleTypes[] =
	{
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_MONSTERTRUCK,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_HELI, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_HELI, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_BOAT,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_TRAILER, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_MONSTERTRUCK, VEHICLE_CAR,
	    VEHICLE_BOAT, VEHICLE_HELI, VEHICLE_BIKE, VEHICLE_TRAM, VEHICLE_TRAILER, VEHICLE_CAR, VEHICLE_BOAT,
	    VEHICLE_BOAT, VEHICLE_BOAT, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_PLANE,
	    VEHICLE_BIKE, VEHICLE_BIKE, VEHICLE_BIKE, VEHICLE_PLANE, VEHICLE_HELI, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_BIKE, VEHICLE_HELI, VEHICLE_CAR, VEHICLE_QUADBIKE, VEHICLE_BOAT, VEHICLE_BOAT, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_PLANE, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_BMX, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_BOAT, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_HELI, VEHICLE_HELI, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_BOAT, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_HELI, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_HELI, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_BMX, VEHICLE_BMX, VEHICLE_PLANE, VEHICLE_PLANE, VEHICLE_PLANE,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_PLANE, VEHICLE_PLANE, VEHICLE_BIKE,
	    VEHICLE_BIKE, VEHICLE_BIKE, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_TRAIN,
	    VEHICLE_TRAIN, VEHICLE_PLANE, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_HELI, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_PLANE,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_MONSTERTRUCK, VEHICLE_MONSTERTRUCK, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_HELI, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_TRAIN, VEHICLE_TRAIN, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_MONSTERTRUCK, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_PLANE, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_BIKE, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_TRAILER, VEHICLE_CAR, VEHICLE_BIKE, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_TRAIN,
	    VEHICLE_TRAILER, VEHICLE_PLANE, VEHICLE_PLANE, VEHICLE_CAR, VEHICLE_BOAT, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR, VEHICLE_CAR,
	    VEHICLE_TRAILER, VEHICLE_TRAILER, VEHICLE_TRAILER, VEHICLE_CAR, VEHICLE_TRAILER, VEHICLE_TRAILER
	};

static const
	legalmods[48][22] =
	{
	    {400, 1024,1021,1020,1019,1018,1013,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {401, 1145,1144,1143,1142,1020,1019,1017,1013,1007,1006,1005,1004,1003,1001,0000,0000,0000,0000},
	    {404, 1021,1020,1019,1017,1016,1013,1007,1002,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {405, 1023,1021,1020,1019,1018,1014,1001,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {410, 1024,1023,1021,1020,1019,1017,1013,1007,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000},
	    {415, 1023,1019,1018,1017,1007,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {418, 1021,1020,1016,1006,1002,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {420, 1021,1019,1005,1004,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {421, 1023,1021,1020,1019,1018,1016,1014,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {422, 1021,1020,1019,1017,1013,1007,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {426, 1021,1019,1006,1005,1004,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {436, 1022,1021,1020,1019,1017,1013,1007,1006,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000},
	    {439, 1145,1144,1143,1142,1023,1017,1013,1007,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000},
	    {477, 1021,1020,1019,1018,1017,1007,1006,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {478, 1024,1022,1021,1020,1013,1012,1005,1004,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {489, 1024,1020,1019,1018,1016,1013,1006,1005,1004,1002,1000,0000,0000,0000,0000,0000,0000,0000},
	    {491, 1145,1144,1143,1142,1023,1021,1020,1019,1018,1017,1014,1007,1003,0000,0000,0000,0000,0000},
	    {492, 1016,1006,1005,1004,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {496, 1143,1142,1023,1020,1019,1017,1011,1007,1006,1003,1002,1001,0000,0000,0000,0000,0000,0000},
	    {500, 1024,1021,1020,1019,1013,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {516, 1021,1020,1019,1018,1017,1016,1015,1007,1004,1002,1000,0000,0000,0000,0000,0000,0000,0000},
	    {517, 1145,1144,1143,1142,1023,1020,1019,1018,1017,1016,1007,1003,1002,0000,0000,0000,0000,0000},
	    {518, 1145,1144,1143,1142,1023,1020,1018,1017,1013,1007,1006,1005,1003,1001,0000,0000,0000,0000},
	    {527, 1021,1020,1018,1017,1015,1014,1007,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {529, 1023,1020,1019,1018,1017,1012,1011,1007,1006,1003,1001,0000,0000,0000,0000,0000,0000,0000},
	    {534, 1185,1180,1179,1178,1127,1126,1125,1124,1123,1122,1106,1101,1100,0000,0000,0000,0000,0000},
	    {535, 1121,1120,1119,1118,1117,1116,1115,1114,1113,1110,1109,0000,0000,0000,0000,0000,0000,0000},
	    {536, 1184,1183,1182,1181,1128,1108,1107,1105,1104,1103,0000,0000,0000,0000,0000,0000,0000,0000},
	    {540, 1145,1144,1143,1142,1024,1023,1020,1019,1018,1017,1007,1006,1004,1001,0000,0000,0000,0000},
	    {542, 1145,1144,1021,1020,1019,1018,1015,1014,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {546, 1145,1144,1143,1142,1024,1023,1019,1018,1017,1007,1006,1004,1002,1001,0000,0000,0000,0000},
	    {547, 1143,1142,1021,1020,1019,1018,1016,1003,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {549, 1145,1144,1143,1142,1023,1020,1019,1018,1017,1012,1011,1007,1003,1001,0000,0000,0000,0000},
	    {550, 1145,1144,1143,1142,1023,1020,1019,1018,1006,1005,1004,1003,1001,0000,0000,0000,0000,0000},
	    {551, 1023,1021,1020,1019,1018,1016,1006,1005,1003,1002,0000,0000,0000,0000,0000,0000,0000,0000},
	    {558, 1168,1167,1166,1165,1164,1163,1095,1094,1093,1092,1091,1090,1089,1088,0000,0000,0000,0000},
	    {559, 1173,1162,1161,1160,1159,1158,1072,1071,1070,1069,1068,1067,1066,1065,0000,0000,0000,0000},
	    {560, 1170,1169,1141,1140,1139,1138,1033,1032,1031,1030,1029,1028,1027,1026,0000,0000,0000,0000},
	    {561, 1157,1156,1155,1154,1064,1063,1062,1061,1060,1059,1058,1057,1056,1055,1031,1030,1027,1026},
	    {562, 1172,1171,1149,1148,1147,1146,1041,1040,1039,1038,1037,1036,1035,1034,0000,0000,0000,0000},
	    {565, 1153,1152,1151,1150,1054,1053,1052,1051,1050,1049,1048,1047,1046,1045,0000,0000,0000,0000},
	    {567, 1189,1188,1187,1186,1133,1132,1131,1130,1129,1102,0000,0000,0000,0000,0000,0000,0000,0000},
	    {575, 1177,1176,1175,1174,1099,1044,1043,1042,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {576, 1193,1192,1191,1190,1137,1136,1135,1134,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {580, 1023,1020,1018,1017,1007,1006,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {589, 1145,1144,1024,1020,1018,1017,1016,1013,1007,1006,1005,1004,1000,0000,0000,0000,0000,0000},
	    {600, 1022,1020,1018,1017,1013,1007,1006,1005,1004,0000,0000,0000,0000,0000,0000,0000,0000,0000},
	    {603, 1145,1144,1143,1142,1024,1023,1020,1019,1018,1017,1007,1006,1001,0000,0000,0000,0000,0000}
	};

#define IsValidModel(%1) \
	(611 >= %1 >= 400)

#define IsUpgrade(%1) \
	(1193 >= %1 >= 1000)

stock GetVehicleType(modelid)
{
    if(!IsValidModel(modelid))
        return 0xFF;

    return gs_vehicleTypes[modelid - 400];
}

stock GetMaxPassengers(modelid)
{
    if(!IsValidModel(modelid))
        return 0xFF;

	return g_ucMaxPassengers[modelid - 400];
}

bool:iswheelmodel(modelid)
{
	for(new i; i != sizeof(wheels); i++)
	{
        if (modelid == wheels[i])
            return true;
    }
    return false;
}

bool:IllegalCarNitroIde(carmodel)
{
    for(new i; i != sizeof(InvalidNosVehicles); i++)
	{
        if (carmodel == InvalidNosVehicles[i])
            return true;
    }
    return false;
}

stock bool:IsUpgradeCompatible(vehicleide, componentid)
{
    new
		bool:modok;

    // stereo, hydraulics & nos (1x 2x 3x) are special.
    if ((iswheelmodel(componentid)) || (componentid == 1086) || (componentid == 1087) || ((componentid >= 1008) && (componentid <= 1010)))
	{
        if (!IllegalCarNitroIde(vehicleide))
        {
            modok = true;
		}
    }
	else
	{
        // check if the specified model CAN use this particular mod.
        for(new i; i != sizeof(legalmods); i++)
		{
            if(legalmods[i][0] == vehicleide) // first is car IDE
			{
                for(new j = 1; j != 22; j++) // start with 1
				{
                    if(legalmods[i][j] == componentid)
                    {
                        modok = true;
					}
			    }
            }
        }
    }
    return modok;
}

// Stereo bugfix
stock A_AddVehicleComponent(vehicleid, componentid)
{
    if(!IsUpgradeCompatible(GetDynamicVehicleModel(vehicleid), componentid)) return 0;
	//if(!(1008 <= componentid <= 1011)) return 0;
	/*
	if(componentid == 1086)
	{
		g_iVehicleFlags[vehicleid] |= e_STEREO_STATUS;
	}
*/
	//if((componentid == 1086) || (componentid == 1087) || ((componentid >= 1008) && (componentid <= 1010))) return 0;
	return AddVehicleComponent(vehicleid, componentid);
}
#define AddVehicleComponent A_AddVehicleComponent

stock GetVehicleComponentTypeName(component)
{
	new
	    szName[16];
	if(component == 1086)
	{
        strcat(szName, "Stereo", sizeof(szName));
		return szName;
	} 

    switch(GetVehicleComponentType(component))
    {
		case CARMODTYPE_SPOILER: strcat(szName, "Spoiler", sizeof(szName));
		case CARMODTYPE_HOOD: strcat(szName, "Hood", sizeof(szName));
		case CARMODTYPE_ROOF: strcat(szName, "Roof", sizeof(szName));
		case CARMODTYPE_SIDESKIRT: strcat(szName, "Sideskirt", sizeof(szName));
		case CARMODTYPE_LAMPS: strcat(szName, "Lamps", sizeof(szName));
		case CARMODTYPE_NITRO: strcat(szName, "Nitro", sizeof(szName));
		case CARMODTYPE_WHEELS: strcat(szName, "Wheels", sizeof(szName));
		case CARMODTYPE_HYDRAULICS: strcat(szName, "Hydraulics", sizeof(szName));
		case CARMODTYPE_FRONT_BUMPER: strcat(szName, "Front Bumper", sizeof(szName));
		case CARMODTYPE_REAR_BUMPER: strcat(szName, "Rear Bumper", sizeof(szName));
		case CARMODTYPE_VENT_RIGHT: strcat(szName, "Right Vent", sizeof(szName));
		case CARMODTYPE_VENT_LEFT: strcat(szName, "Left Vent", sizeof(szName));
		default: strcat(szName, "Ismeretlen", sizeof(szName));
    }
    return szName;
}


#define IsValidIcon(%1) \
	(64 >= %1 >= 0)

stock SetPlayerShopNameEx(playerid, shoptype)
{
	switch(shoptype)
	{
	    case 0: SetPlayerShopName(playerid, "FDPIZA");
	    case 1: SetPlayerShopName(playerid, "FDBURG");
	    case 2: SetPlayerShopName(playerid, "FDCHICK");
	    case 3: SetPlayerShopName(playerid, "AMMUN1");
	    case 4: SetPlayerShopName(playerid, "AMMUN2");
	    case 5: SetPlayerShopName(playerid, "AMMUN3");
	    case 6: SetPlayerShopName(playerid, "AMMUN5");
		default: return 0xFF;
	}
	return 1;
}

stock ColouredText(const text[]) // RyDeR
{
    new
        pos = -1,
        string[(128 + 16)]
    ;
    strmid(string, text, 0, 128, (sizeof(string) - 16));

    while((pos = strfind(string, "#", true, (pos + 1))) != -1)
    {
        new
            i = (pos + 1),
            hexCount
        ;
        for( ; ((string[i] != 0) && (hexCount < 6)); ++i, ++hexCount)
        {
            if(!(('a' <= string[i] <= 'f') || ('A' <= string[i] <= 'F') || ('0' <= string[i] <= '9')))
            {
                break;
            }
        }
        if((hexCount == 6) && !(hexCount < 6))
        {
            string[pos] = '{';
            strins(string, "}", i);
        }
    }
    return string;
}

stock FilterColorTags(string[]) // RyDeR
{
    new
        textPos = -1,
        i
    ;
    while((textPos = strfind(string, "{", false, (textPos + 1))) != -1)
    {
        for(i = textPos; i != (textPos + 7); ++i)
        {
            switch(string[i])
            {
                case 'a'..'f', 'A'..'F', '0'..'9':
                {
                    if(i == (textPos + 6))
                    {
                        if(string[(i + 1)] == '}')
                        {
                            strdel(string, textPos, (i + 2));
                        }
                    }
                }
                default: continue;
            }
        }
    }
}

stock RemoveHexColorFromString(str[], i = 0)
{
    new
        pos,
        lenght = strlen(str);
    while(i + pos < lenght)
    {
        if(str[i + pos] == '{' && str[i + pos + 7] == '}') pos += 8;
        str[i] = str[i + pos];
        i++;
    }
    str[i] = EOS;
}

#if !defined YSF
IsValidNickName(const aname[])
{
    new
        i,
        ch;
    while ((ch = aname[i++]) && ((ch == ']') || (ch == '[') || (ch == '(') || (ch == ')') || (ch == '_') || (ch == '$') || (ch == '@') || (ch == '.') || (ch == '=') || ('0' <= ch <= '9') || ((ch |= 0x20) && ('a' <= ch <= 'z')))) {}
    return !ch;
}
#endif

stock strcpy(dest[], const source[], maxlength=sizeof dest)
{
    strcat((dest[0] = EOS, dest), source, maxlength);
}

#if !defined _regex_included

	stock bool:IsValidEmail(const eemail[])
	{
		new
		    len = strlen(eemail);
	   	for(new i = 0; i != len; i++)
		{
	        if(strfind(eemail[i], "@") != -1 && strfind(eemail[i], ".") != -1) return true;
	    }
		return false;
	}

#else

	#define IsValidEmail(%1) \
	    regex_match(%1, "[a-zA-Z0-9_\\.]+@([a-zA-Z0-9\\-]+\\.)+[a-zA-Z]{2,4}")

	stock ContainsIPEx(const string[])
	{
	    static RegEx:rCIP;
	    if(!rCIP)
	    {
	        rCIP = regex_build("(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?\.){3}(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9])");
	    }
	    return regex_match_exid(string, rCIP);
	}
#endif

forward Float:GetXYInFrontOfPlayer(playerid, &Float:x, &Float:y, Float:distance);
Float:GetXYInFrontOfPlayer(playerid, &Float:x, &Float:y, Float:distance)
{
	new
		Float:a,
		vehicleid = GetPlayerVehicleID(playerid);
	GetPlayerPos(playerid, x, y, a);
	if(vehicleid) GetVehicleZAngle(vehicleid, a);
	else GetPlayerFacingAngle(playerid, a);
	x += (distance * floatsin(-a, degrees));
	y += (distance * floatcos(-a, degrees));
	return a;
}

forward Float:BonusCarDistance(playerid);
Float:BonusCarDistance(playerid)
{
	GetVehiclePos(g_BonusCarID, V[0], V[1], V[2]);
	return GetPlayerDistanceFromPoint(playerid, V[0], V[1], V[2]);
}

forward Float:GetPointAngleToPoint(Float:x2, Float:y2, Float:_X, Float:_Y);
Float:GetPointAngleToPoint(Float:x2, Float:y2, Float:_X, Float:_Y)
{
	new
		Float:DX,
		Float:DY,
 		Float:angle;

  	DX = floatabs(floatsub(x2, _X));
  	DY = floatabs(floatsub(y2, _Y));

  	if(!(DY || DX))
	{
		if(DY == 0 && DX > 0) angle = 0.0;
    	else if(DY == 0 && DX < 0) angle = 180.0;
    	else if(DY > 0 && DX == 0) angle = 90.0;
    	else if(DY < 0 && DX == 0) angle = 270.0;
    	else if(DY == 0 && DX == 0) angle = 0.0;
  	}
  	else
  	{
		angle = atan(DX/DY);
    	if(_X > x2 && _Y <= y2) angle += 90.0;
    	else if(_X <= x2 && _Y < y2) angle = floatsub(90.0, angle);
    	else if(_X < x2 && _Y >= y2) angle -= 90.0;
    	else if(_X >= x2 && _Y > y2) angle = floatsub(270.0, angle);
  	}
  	return floatadd(angle, 90.0);
}

#define IsNumeric(%1) \
    (!sscanf(%1, "d", rand))

/* Vehicle Damage */
#define encode_lights(%1,%2,%3,%4) \
    (%1 | (%2 << 1) | (%3 << 2) | (%4 << 3))

#define encode_tires(%1,%2,%3,%4) \
    (%1 | (%2 << 1) | (%3 << 2) | (%4 << 3))

#define encode_doors(%1,%2,%3,%4,%5,%6) \
    (%1 | (%2 << 8) | (%3 << 16) | (%4 << 24))

#define encode_panels(%1,%2,%3,%4,%5,%6,%7) \
    (%1 | (%2 << 4) | (%3 << 8) | (%4 << 12) | (%5 << 16) | (%6 << 20) | (%7 << 24))

/* MK Time */
stock mktime(m_hour, m_minute, m_second, m_day, m_month, m_year)
{
	new
		timestamp2 = m_second + (m_minute * 60) + (m_hour * 3600),
		days_of_month[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31},
		days_this_year;
		
	if(((m_year % 4 == 0) && (m_year % 100 != 0)) || (m_year % 400 == 0))
	{
		days_of_month[1] = 29; // Schaltjahr
	}
	else
	{
		days_of_month[1] = 28; // keins
	}

	days_this_year = --m_day;
	if(m_month > 1)
	{
		for(new i = 0; i < m_month - 1; i++)
		{
			days_this_year += days_of_month[i];
		}
	}
	timestamp2 += days_this_year * 86400;

	for(new j = 1970; j < m_year; j++)
	{
		timestamp2 += 31536000;
		if(((j % 4 == 0) && (j % 100 != 0)) || (j % 400 == 0))  timestamp2 += 86400; // Schaltjahr + 1 Tag
	}
	return timestamp2;
}

stock date(timestamp, &f_day, &f_month, &f_year, &f_hour, &f_min, &f_sec)
{
	new
		s_year = 1970,
		s_day,
		s_month,
		s_hour,
		s_mins,
		days_of_month[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

	while(timestamp > 31622400)
	{
		timestamp -= 31536000;
		if(((s_year % 4 == 0) && (s_year % 100 != 0)) || (s_year % 400 == 0))  timestamp -= 86400;
		s_year++;
	}

	if(((s_year % 4 == 0) && (s_year % 100 != 0)) || (s_year % 400 == 0))
	{
		days_of_month[1] = 29;
	}
	else
	{
		days_of_month[1] = 28;
	}

	while(timestamp > 86400)
	{
		timestamp -= 86400, s_day++;
		if(s_day == days_of_month[s_month]) s_day=0, s_month++;
	}

	while(timestamp > 60)
	{
		timestamp -= 60, s_mins++;
		if(s_mins == 60) s_mins = 0, s_hour++;
	}

	f_day = s_day + 1;
	f_month = s_month + 1;
	f_year = s_year;
	f_hour = s_hour;
	f_min = s_mins;
	f_sec = timestamp;

	return true;
}

stock CurrentTimestamp()
{
	new
		_year, _month, _day, _hour, _minute, _second;
    getdate(_year, _month, _day);
	gettime(_hour, _minute, _second);
	return mktime(_hour, _minute, _second, _day, _month, _year);
}

forward KickPlayer(playerid);
public KickPlayer(playerid)
{
    return Kick(playerid);
}

forward BanPlayer(playerid);
public BanPlayer(playerid)
{
    return BanEx(playerid, !"Serial Ban");
}

stock bool:IsSafeForTextdraw(const str[])
{
	new
		safetil = -5;

	for (new i; i < strlen(str); i++)
	{
		if ((str[i] == 126) && (i > safetil))
		{
			if (i >= strlen(str) - 1) // not enough room for the tag to end at all.
				return false;

			if (str[i + 1] == 126)
				return false; // a tilde following a tilde.

			if (str[i + 2] != 126)
				return false; // a tilde not followed by another tilde after 2 chars

			safetil = i + 2; // tilde tag was verified as safe, ignore anything up to this location from further checks (otherwise it'll report tag end tilde as improperly started tag..).
		}
	}
	return true;
}

/*
SendClientMessagef(playerid, colour, format[], va_args<>)
{
	if(isnull(format))
	{
	    return 0;
	}

    va_format(gs_szKimenet, sizeof(gs_szKimenet), format, va_start<3>);
    return SendClientMessage(playerid, colour, gs_szKimenet);
}
*/

native SendClientMessageToAll_(color, const message[], {Float,_}:...) = SendClientMessageToAll;
stock A_SendClientMessageToAll(color, format[], va_args<>)
{
	if(isnull(format))
	{
	    return 0;
	}

	new lang[MAX_LANGUAGE][144];

	for(new i; i != sizeof(lang); i++)
	{
        GetGVarString(format, lang[i], sizeof(lang[]), i);
	}

    foreach(Player, i)
    {
		SendClientMessage(i, color, lang[g_pLang{i}]);
	}
	return 1;
}
#define SendClientMessageToAll A_SendClientMessageToAll


native SendClientMessageToAllf_(color, const message[], {Float,_}:...) = SendClientMessageToAllf;
stock A_SendClientMessageToAllf(color, format[], va_args<>)
{
	if(isnull(format))
	{
	    return 0;
	}

	new lang[MAX_LANGUAGE][144];
	
	for(new i; i != sizeof(lang); i++)
	{
    	va_format(lang[i], 144, GetGVarStringEx(format, i), va_start<2>);
	}
	
    foreach(Player, i)
    {
		SendClientMessage(i, color, lang[g_pLang{i}]);
	}
	return 1;
}
#define SendClientMessageToAllf A_SendClientMessageToAllf

SendClientMessageToAdmins(color, level, format[], va_args<>)
{
	if(isnull(format))
	{
	    return 0;
	}

	new lang[MAX_LANGUAGE][144];

	for(new i; i != sizeof(lang); i++)
	{
    	va_format(lang[i], 144, GetGVarStringEx(format, i), va_start<3>);
	}

	foreach(Player, x)
	{
		if(GetPVarInt(x, "Level") >= level)
		{
  			SendClientMessage(x, color, lang[g_pLang{x}]);
		}
	}
    return 1;
}

native SetPlayerChatBubble_(playerid, text[], color, Float:drawdistance, expiretime) = SetPlayerChatBubble;
stock A_SetPlayerChatBubble(playerid, color, Float:drawdistance, expiretime, format[], va_args<>)
{
	if(isnull(format))
	{
	    return 0;
	}

	new lang[MAX_LANGUAGE][144];

	for(new i; i != sizeof(lang); i++)
	{
    	va_format(lang[i], 144, GetGVarStringEx(format, i), va_start<5>);
	}

    foreach(Player, i)
    {
		SetPlayerChatBubbleForPlayer(i, playerid, lang[g_pLang{i}], color, drawdistance, expiretime);
	}
	return 1;
}
#define SetPlayerChatBubble A_SetPlayerChatBubble


bool:IsValidRaceVehicle(modelid)
{
	switch(modelid)
	{
        case 592, 577, 511, 512, 593, 520, 553, 476, 519, 460, 513, 548, 425, 417, 487, 488, 497, 563, 447, 469, 472, 473, 493, 595,
			 484, 430, 453, 452, 446, 454, 524, 578, 455, 403, 443, 514, 515, 531, 408, 456, 433, 431, 437, 601, 532, 486, 406: return false;
	}
	return true;
}
new const
	g_baValidModels[] = // I excluded LOD models and peds.
	{
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b11111111111011111110110111111111, 0b00000000001111111111111111111111,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b11111111111111111111111110000000,
		0b11100001001111111111111111111111, 0b11110111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b00000001111000000111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111100011111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111011111, 0b11111111111111111111111101111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111100000000000001111111111,
		0b11111111111111111111111111111111, 0b11111111111010111101111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111001111111111111,
		0b11111111111111111111111111111111, 0b10000000000011111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111011111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111101011101111111111, 0b11111111111111111111111111110111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111110011,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111100111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111011111111111111,
		0b10000000000000000000000000000000, 0b00000010000010000000010011111111,
		0b00000000001000000100000000000000, 0b11111111101101100101111000000000,
		0b01110000111111111111111111111011, 0b00000000001111111111111111000000,
		0b10011111110000000000001111001100, 0b11111111101111001100000000011110,
		0b00001110110111111100111111111111, 0b11111111111111111111111111011110,
		0b11111000000011111111111111111111, 0b11111111111111111110111101101011,
		0b01000000000000000111111101110111, 0b11010111111111111111000001111100,
		0b11110011111111111111111001111111, 0b01011111111111111111111111111111,
		0b01111110100001111011111010101011, 0b10001001010101100100001000010000,
		0b10100000000000000001010000101010, 0b00001000001111101010111100100000,
		0b11111111111111111111111010100001, 0b00000000011111111111110101111111,
		0b00001111111111111111110000111100, 0b11011110111111001111011011111011,
		0b11111111111111111111110011001110, 0b11111111111111111111111111111111,
		0b01111111111111111111111110111111, 0b01111000111111111111110111111111,
		0b00011100000000010000000000000111, 0b00001111111100001000000000000000,
		0b10101111001001110111110011111000, 0b01010101010101010110100000101011,
		0b01110111110101011111110100101001, 0b01111111111100101110111011111011,
		0b11111111111111111100101111001000, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b00000000011111111111111111111111, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b11111111000000000000000000000000, 0b00010100101000001111111111111111,
		0b11111111101111011111111111000000, 0b00111111111111111111111100000001,
		0b11110000000000000000000000000000, 0b00000101010101010111111111111111,
		0b11110010110111000011111010000000, 0b11111110111111110111110111010000,
		0b00000000000000011111111111111111, 0b00000000000000000000000000000000,
		0b11111111111111111111111111000000, 0b11111111111111111111111111111111,
		0b11011111111111111111111111111111, 0b00000000000000000000000000000111,
		0b00000000000000000000000000000000, 0b11010111111000000000000000000000,
		0b10110011001000101111111111111111, 0b00011000010111010101011111010111,
		0b11011111111111111111010101111111, 0b11111111111111100000000000000011,
		0b11111111111111111111111111111111, 0b11111111111111111100000101111111,
		0b00000000000000000000000111111111, 0b00011000000001111000000000000000,
		0b11111111111111100111100000000100, 0b11110100011011111111110000000000,
		0b11111110001001111111110000000111, 0b11111111110110000100101010101000,
		0b11111111111111111100000000000000, 0b11111111111111111111111111111111,
		0b11101011111011110011111111111111, 0b11111111111111111111111111111111,
		0b00010001000001111100001111111111, 0b00100000000000000000000000000000,
		0b00000000000000000000000000000000, 0b11111101000000000000000000000000,
		0b11110001110101000001111111111111, 0b00000000000001101111010000010010,
		0b11111111111111111111111110000000, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11100001111100000111100000000000, 0b11100110011111111101011111111011,
		0b00000000000000000000000100111001, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000100110000101100111111001100,
		0b11111111111110000000000000000000, 0b00000000000001111111111111111111,
		0b11000001111111011100000110000000, 0b00000111111101111111111111111111,
		0b00000000001000011110000111010010, 0b00111000100111110011110000000000,
		0b00111111111110101000001001111110, 0b00000000000000100001111100000000,
		0b11111111111111111111111100000000, 0b01111111111111111111111111111111,
		0b01011100001111111110101111110111, 0b11100010111111100000000000111111,
		0b11011000011000110011100011111001, 0b01100110000011110001100000010000,
		0b00000111100000000000000000000100, 0b00010111111101100011100001101010,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b11111111101111111000000000000000, 0b01111000000111100000000111111111,
		0b00000000011111110111111110111111, 0b11111111111111111111111111111111,
		0b00000000101001101111111111111111, 0b11111111111111111111111111111110,
		0b10100001000000111111111111111111, 0b11111111111111111111111111111011,
		0b00000000000000000000000000000011, 0b00000000000000100000000000000000,
		0b01110001111111010000000000010000, 0b11111101111101100011011111111111,
		0b10000000011111111111110101010111, 0b11011111100000010011001110110111,
		0b11010011101011111111111111111111, 0b10101010000010010000001111111000,
		0b11111000101111100000111111010110, 0b11111111100000000000000000000001,
		0b11111111111111111111111111111111, 0b01111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111101111111111,
		0b11111111111111111111111111111111, 0b00000000000001111111111111111111,
		0b00111000000000010001000000000010, 0b00000000000011100000000000000000,
		0b00000000000000000000100000000000, 0b00000000000000000000000000000000,
		0b11110101000000000000000000000000, 0b00011111111000000101001000000111,
		0b11110000011110100011011101000000, 0b01111110111111111111111111111111,
		0b10101000000111110100101111011100, 0b11111111111111111111110000111010,
		0b00000000000000000000011111111111, 0b11111111111111111111111111111110,
		0b00001000111111111111111111111111, 0b00000000000000000000000000000000,
		0b00001111111110000000001111111101, 0b00111110000001111111101110100000,
		0b00001111111101111100011111000100, 0b11101010111101010011000111110000,
		0b11101010000000000000000111010001, 0b10001110110101100101000001110101,
		0b11000011111010101011111111111111, 0b11010110101111110000000000111111,
		0b00011111111111111111111111010100, 0b11111111111111111111111111111111,
		0b00111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b10000000001111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b00000000000000111111111111111111,
		0b00000000000000000000000001000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00011111000000000000000000000000,
		0b00011111111111100111111111111111, 0b00000011111111111111111111111110,
		0b00000000000000000000000000000000, 0b00101100000110000000000000010000,
		0b11100000111110000000001000000000, 0b11111000000000011111111100000000,
		0b11010000111111101011111111111111, 0b11001101010100011100011101000011,
		0b11111111111101010011110011100111, 0b01000000000111111001101111111111,
		0b00000000111010111111110010000111, 0b11111111111000000000001111111111,
		0b11111111111111111111111111111111, 0b11111111111011110111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b00000000000001100000001111111111, 0b00000000000000000000000000000000,
		0b11100000000000000000000000000000, 0b00000000000000000000000000000001,
		0b11111111111111111111110000010000, 0b00000111111111111111111111111111,
		0b11111111111111111110100000000000, 0b11111111111111111111111110111111,
		0b00000011100001111111111111111111, 0b00000000001100000000000000000000,
		0b01100110001011010000000000000000, 0b11111111111111111111111111111111,
		0b00000111111111111111111111111111, 0b00000000000000000000000011111110,
		0b11111111110100000000000000000000, 0b00000000000000000111111111101011,
		0b01100000000000000000000110011100, 0b11111111111111111111111111101010,
		0b11111100000000000111111111111111, 0b00000000000000000000000001111111,
		0b11111111000000000000000000000000, 0b11111111111111111111111111111111,
		0b11111111111111111111011111111111, 0b11000000001000000000000011011001,
		0b11011111111111111111111111111111, 0b11100000011000000000011111111110,
		0b00000000001111100011111111111111, 0b00011110111111000000000000000000,
		0b11001111111100001001011111110100, 0b00110001110001111000011101011110,
		0b00000000000000000000000001110110, 0b11111111111111111100000000000000,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b00111111111111111111111111111111,
		0b00000000000000000000000000000000, 0b11000000000000000000000000000000,
		0b00000000000000011111111111111111, 0b11101111111111110100001000000000,
		0b00001010000000001111111111111111, 0b00001100000110011000000000000000,
		0b01010011111111111111111111000000, 0b11000001111111111100000000000100,
		0b11111111111111111111111111111111, 0b11001111110000000000111111111111,
		0b11111111111111111111111111111111, 0b00001111111111111111111111011111,
		0b00000011100000000000111000100000, 0b11111111111111111110000000100000,
		0b11111111111001111111111111111111, 0b11111111111111111111111111111111,
		0b00000000000000000000000011111111, 0b10000000000000000000000000000000,
		0b11111111111111111111111111111111, 0b11111111111111111111111111001111,
		0b00000000000000000111111000001111, 0b00000000000000000000000000000000,
		0b11110111100000000000000000000000, 0b00111111111100001111111111111111,
		0b10110111101010010000000000000000, 0b11010000111111110001011011101010,
		0b10000011100000101101001011010000, 0b11111111111110000100000010111101,
		0b11110011011111110100001100011111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b00111000000110011111111111111111,
		0b10001111100000000000000000000000, 0b10000000000000001011111010000000,
		0b11100100000001111000000000000000, 0b00000000000000000000000000000011,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111011,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b00001110001111111101111001011011,
		0b00011110011000011100011000111100, 0b11000000001011111111111110010001,
		0b01111111111111111101101111111111, 0b00111111111111111010100001110010,
		0b01111111111000000100000001011000, 0b00000000001110000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000111000000000000000,
		0b01000001000100000011101000000001, 0b11001111100110110000000000111010,
		0b00000000000000000000000000000000, 0b11111000000000000100000000000000,
		0b01000000001000000001111110111111, 0b11111111111011100111000000000000,
		0b11111111111111111111111111111111, 0b00001111111111111111111111111111,
		0b11111111110000000000000000000000, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111100001111,
		0b11111111111111111111111111111111, 0b01111111101111011111111111111111,
		0b00100001000000000000000000000010, 0b10110111011001100111011000001000,
		0b00000000001000000000000010000111, 0b10000100000000011000001111100000,
		0b00000000000000000000000000000100, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b11111111111111111000000000000000,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11010111111111111111111111111101, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111100000011111111111111111111,
		0b11111111111111111111111111110011, 0b11111111111111111111100011111111,
		0b11111111111111111000000111111111, 0b11111111111111000011111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111110111111111, 0b00000000111101111111111111101111,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b11111111111111100000000000000000,
		0b00000001111111111111111111111111, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111101111111111111111, 0b00000111111111111111111111111111,
		0b00001111111111111111111111111111, 0b01110100111101000100000111110000,
		0b10101000000000000000000000000001, 0b00000000111101000000000000000011,
		0b00000000111111000000000000000000, 0b00001001000111000000000000000000,
		0b00100010100000100000000000000000, 0b11111111111110001100000000100100,
		0b11111111111111111111111111111111, 0b01110000011101100011111001111010,
		0b11111000000000000000000000011110, 0b11000001111101100000111111111111,
		0b00000000011111111111111111101110, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b11111111111111111111111100000000,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b01010111111111111111111111111111,
		0b01010101010101010101010101010101, 0b01010101000101010101010101010101,
		0b01010101010101010101010101010101, 0b10101010101010000101010101010101,
		0b01111010111111111111111111111010, 0b00000000111010101101100000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b11110111111111000000000000000000, 0b11111111111111111111110100011111,
		0b11110000000000000000000000000101, 0b11111111111111111111111011111111,
		0b11111111111111111111111111111111, 0b11111101101101101100111111100001,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b00000000000000000000000000011111,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000101011000000000000, 0b01111011000000100000000000100000,
		0b11000011111111010000111111011000, 0b11111011100011110110111001111001,
		0b11001101111111110110000111100111, 0b00000101011110110000000001111110,
		0b11111111111111110000000000000000, 0b11111111110111111111111111111111,
		0b11111111111111111111111111111111, 0b00100011011111111111111111111111,
		0b00000000000000000000000000000001, 0b00000000000000000000000000000000,
		0b11111111000000000000000000000000, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b00000111111111111111111111111111, 0b00000000000000000000000000000000,
		0b11111111111111111111111111111111, 0b00000000001111111111111111111111,
		0b00000000010000000000000000000001, 0b00000011100000000000000000000000,
		0b00000000000000000000001111101010, 0b11111111111111110000000000000000,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b11111111111111111111111111111111,
		0b11111111111111111111111111111111, 0b00000000000000000000111111111111,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00100000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000,
		0b00000000000000000000000000000000, 0b00000000000000000000000000000000
	};

forward IsValidObjectModel(iModel);
public IsValidObjectModel(iModel)
{
	if(!(0 <= iModel <= 20000))
		return 0;

	else
	{
		switch (iModel)
		{
			case 1326, 320, 16330, 13051, 1385, 1382, 1373:
				return 0;

			case 18631..19999:
				return 1;
				
			case 11682..11753:
			    return 1;
		}
		return (g_baValidModels[iModel >>> 5] & (1 << ((iModel) & (cellbits - 1)))) ? (1) : (0);
	}
}

stock RandomNumberPlate(vehicleid)
{
	if(!IsLicensePlate(vehicleid))
	    return 0xFF;

	switch(random(6))
	{
		case 0: format(i_str, 32, "{" #XCOLOR_RED "}MFR {" #XCOLOR_GREEN "}%d", vehicleid);
		case 1: format(i_str, 32, "{" #XCOLOR_RED "}MFR {" #XCOLOR_GREEN2 "}%d", vehicleid);
		case 2: format(i_str, 32, "{" #XCOLOR_RED "}MFR {" #XCOLOR_GREEN3 "}%d", vehicleid);
		case 3: format(i_str, 32, "{" #XCOLOR_RED "}MFR {" #XCOLOR_BLUE "}%d", vehicleid);
		case 4: format(i_str, 32, "{" #XCOLOR_RED "}MFR {" #XCOLOR_BLUE2 "}%d", vehicleid);
		case 5: format(i_str, 32, "{" #XCOLOR_RED "}MFR {" #XCOLOR_BLUE2 "}%d", vehicleid);
	}
	return SetDynamicVehicleNumberPlate(vehicleid, i_str);
}

new const g_VehPrices[] =
{25000,
9000,
35000,
35000,
10000,
35000,
5000,
15000,
5000,
40000,
9000,
95000,
30000,
20000,
22000,
105000,
10000,
16000,
19000,
20000,
18000,
26000,
29000,
15000,
25000,
40000,
40000,
45000,
15000,
110000,
10000,
35000,
35000,
9000,
20000,
10000,
19000,
26000,
500,
10000,
20000,
40000,
35000,
26000,
10000,
35000,
95000,
10000,
22000,
9000,
18000,
20000,
20000,
20000,
40000,
19000,
19000,
45000,
26000,
18000,
35000,
26000,
26000,
9000,
5000,
40000,
40000,
9000,
19000,
45000,
40000,
35000,
22000,
22000,
25000,
500,
500,
105000,
35000,
22000,
35000,
35000,
35000,
35000,
19000,
5000,
20000,
19000,
9000,
40000,
19000,
9000,
9000,
10000,
35000,
30000,
19000,
19000,
5000,
5000,
19000,
105000,
19000,
26000,
25000,
20000,
19000,
19000,
19000,
19000,
35000,
20000,
40000,
35000,
40000,
40000,
35000,
35000,
35000,
35000,
35000,
500,
35000,
35000,
19000,
15000,
5000,
5000,
15000,
15000,
40000,
15000,
19000,
19000,
5000,
40000,
35000,
20000,
15000,
35000,
35000,
5000,
35000,
22000,
35000,
35000,
500,
25000,
25000,
25000,
25000,
26000,
40000,
35000,
35000,
9000,
9000,
9000,
22000,
9000,
9000,
9000,
10000,
10000,
10000,
10000,
10000,
10000,
10000,
10000,
9000,
10000,
10000,
10000,
10000,
40000,
30000,
25000,
70000,
60000,
73000,
10000,
5000,
99000,
48000,
30000,
10000,
26000,
45000,
45000,
45000,
45000,
45000,
45000,
45000,
45000,
45000,
45000,
25000,
28000,
45000,
50000,
52000,
99000,
25000,
25000,
99000,
300,
800,
500
};

stock GetVehiclePrice(modelid)
{
	if(!(400 <= modelid <= 610)) return 0;
	
	return g_VehPrices[modelid - 400];
}

new const Float:gVehiclePetrolCapOffsets[][3] =//thanks to Admigo
{
        {-1.06,-2.07,-0.03},
        {1.25,-0.91,0.05},
        {1.11,-1.92,0.17},
        {-1.46,0.02,-0.66},
        {-1.03,-2.37,0.06},
        {-0.86,-2.16,-0.08},
        {0.00,0.00,0.00},
        {-1.07,-3.74,-0.42},
        {-1.46,1.24,-0.57},
        {-1.04,-2.82,0.14},
        {-0.96,-1.66,0.23},
        {1.06,-2.10,0.09},
        {0.00,0.00,0.00},
        {-0.46,0.53,-0.79},
        {-0.66,-0.71,-0.70},
        {-1.07,-2.06,0.05},
        {-1.16,-2.72,-0.21},
        {0.00,0.00,0.00},
        {-1.24,-1.76,0.03},
        {-1.09,-1.99,0.06},
        {-1.03,-2.14,0.08},
        {-1.02,-2.43,-0.14},
        {-0.93,-0.41,-0.19},
        {-1.13,-1.90,-0.28},
        {-1.11,-0.54,-0.10},
        {0.00,0.00,0.00},
        {-1.00,-2.16,0.06},
        {-1.27,-3.18,-0.18},
        {-1.01,-2.65,-0.56},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-1.32,-5.47,-0.12},
        {0.00,0.00,0.00},
        {-1.51,0.15,-0.67},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-1.02,-1.81,0.16},
        {-1.24,-4.98,-0.51},
        {-1.06,-1.93,-0.00},
        {-1.07,-1.50,0.07},
        {-0.89,-0.47,-0.46},
        {0.00,0.00,0.00},
        {-1.17,-2.20,0.08},
        {-1.24,1.25,-0.91},
        {0.00,0.00,0.00},
        {-1.07,-1.95,0.13},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {1.08,-1.21,-0.03},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-1.52,0.00,-0.74},
        {0.73,-0.05,-0.59},
        {0.00,0.00,0.00},
        {-1.11,-2.04,-0.09},
        {-0.97,-2.30,0.21},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-0.25,0.20,-0.17},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-0.92,-2.30,0.08},
        {-0.07,0.17,0.69},
        {0.00,0.00,0.00},
        {-1.17,-2.37,0.24},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-1.09,-1.60,0.13},
        {0.00,0.00,0.00},
        {-1.03,-1.52,0.15},
        {1.01,-0.33,0.23},
        {-1.09,-1.98,0.09},
        {-1.12,-0.88,0.14},
        {0.00,0.00,0.00},
        {1.03,-2.26,0.00},
        {0.80,-2.50,-0.05},
        {0.00,0.00,0.00},
        {-0.88,0.71,0.03},
        {-0.66,-3.17,0.58},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {1.22,-0.74,0.02},
        {0.00,0.00,0.00},
        {-1.05,-2.18,0.02},
        {-1.07,-2.09,0.17},
        {0.00,0.00,0.00},
        {-1.00,-2.20,0.14},
        {1.16,-1.91,-0.11},
        {1.08,-1.83,0.15},
        {0.00,0.00,0.00},
        {-1.21,-0.01,0.09},
        {-1.19,-1.09,-0.31},
        {-0.91,-1.70,-0.06},
        {0.00,0.00,0.00},
        {-0.96,-1.88,0.13},
        {-0.98,-2.03,0.04},
        {-1.14,-1.82,0.13},
        {1.22,-0.74,0.00},
        {0.96,-1.11,-0.11},
        {-1.08,-2.30,0.08},
        {-1.35,-3.05,-0.67},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-1.50,-0.88,-0.24},
        {-1.08,0.51,-1.43},
        {-1.13,-2.44,-0.01},
        {-1.11,-1.95,0.08},
        {1.09,-2.19,-0.08},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-0.17,0.13,0.52},
        {-0.14,0.18,0.53},
        {-0.18,0.24,0.49},
        {1.24,0.46,-1.06},
        {-1.31,-0.50,-0.07},
        {-0.94,-1.94,0.05},
        {-1.13,-1.70,0.16},
        {-0.51,-2.07,0.01},
        {-1.15,-2.20,0.22},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,-2.43,-0.91},
        {0.91,-1.97,0.11},
        {-1.01,-0.83,-0.20},
        {-1.13,-0.55,0.28},
        {-0.98,-1.69,0.06},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-1.23,-2.51,-0.03},
        {0.00,0.00,0.00},
        {-0.97,-1.92,0.31},
        {-0.96,-0.94,-0.01},
        {-1.15,2.04,0.32},
        {0.00,0.00,0.00},
        {1.22,-1.99,0.16},
        {-1.09,-2.00,0.13},
        {0.00,0.00,0.00},
        {-0.89,-1.14,0.18},
        {-1.10,-2.40,-0.02},
        {-1.03,-2.66,0.07},
        {-0.95,-0.94,0.45},
        {0.00,0.00,0.00},
        {1.27,-2.37,0.13},
        {-0.80,-1.47,0.17},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-0.84,-1.92,0.23},
        {-1.01,-1.76,0.25},
        {0.98,-1.83,0.20},
        {1.13,-2.28,0.11},
        {0.93,-0.71,0.05},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.95,-0.86,0.09},
        {1.18,-2.26,0.06},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.62,-0.37,0.46},
        {-0.35,-1.03,0.24},
        {0.00,0.00,0.00},
        {-0.59,-0.94,0.26},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-1.33,2.89,-0.02},
        {1.13,-2.29,0.16},
        {1.23,-1.77,0.29},
        {-0.22,0.01,0.54},
        {-0.90,0.15,-0.32},
        {-0.62,0.37,-0.12},
        {0.00,0.00,0.00},
        {1.07,-2.29,0.20},
        {0.00,0.00,0.00},
        {-1.22,-1.21,0.12},
        {-1.20,-2.12,0.23},
        {0.98,-0.89,0.10},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-0.97,-2.16,0.06},
        {-1.02,-2.16,0.07},
        {-1.08,-1.95,0.18},
        {0.00,0.00,0.00},
        {0.95,-2.01,0.06},
        {-1.36,-1.69,0.92},
        {0.97,-1.95,0.08},
        {1.24,-2.20,-0.04},
        {0.00,0.00,0.00},
        {-0.95,-0.93,-0.02},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00},
        {-1.26,-0.03,0.09},
        {0.00,0.00,0.00},
        {0.00,0.00,0.00}
};
/* // Vmi anticrash a kamera vektorra
public OnPlayerUpdate(playerid)
{
    if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        new Float:vector[3];
        GetPlayerCameraFrontVector(playerid, vector[0], vector[1], vector[2]);
        new bool:crash = false;
        for(new i = 0; !crash && i < sizeof(vector); i++)
        {
            if(floatabs(vector[i]) > 10.0)
            {
                crash = true;
            }
        }
        if(crash)
        {
            Kick(playerid);
            return 0;
        }
    }
    return 1;
}*/
/*

			case WEAPON_BRASSKNUCKLE: level = 1;
			case WEAPON_GOLFCLUB: level = 3;
			case WEAPON_NITESTICK: level = 3;
			case WEAPON_KNIFE: level = 5;
			case WEAPON_BAT: level = 5;
			case WEAPON_SHOVEL: level = 6;
			case WEAPON_POOLSTICK: level = 5;
			case WEAPON_KATANA: level = 8;
			case WEAPON_CHAINSAW: level = 16;
			case WEAPON_DILDO: level = 2;
			case WEAPON_DILDO2: level = 2;
			case WEAPON_VIBRATOR: level = 2;
			case WEAPON_VIBRATOR2: level = 2;
			case WEAPON_FLOWER: level = 2;
			case WEAPON_CANE: level = 2;
			case WEAPON_GRENADE: level = 30;
			case WEAPON_TEARGAS: level = 6;
			case WEAPON_MOLTOV: level = 10;
			case WEAPON_COLT45: level = 3;
			case WEAPON_SILENCED: level = 4;
			case WEAPON_DEAGLE: level = 14;
			case WEAPON_SHOTGUN: level = 20;
			case WEAPON_SAWEDOFF: level = 30;
			case WEAPON_SHOTGSPA: level = 32;
			case WEAPON_UZI: level = 12;
			case WEAPON_MP5: level = 15;
			case WEAPON_AK47: level = 34;
			case WEAPON_M4: level = 36;
			case WEAPON_TEC9: level = 8;
			case WEAPON_RIFLE: level = 33;
			case WEAPON_SNIPER: level = 34;
			case WEAPON_ROCKETLAUNCHER: level = 40;
			case WEAPON_HEATSEEKER: level = 45;
			case WEAPON_FLAMETHROWER: level = 37;
			case WEAPON_MINIGUN: level = 50;
			case WEAPON_SATCHEL: level = 25;
			case WEAPON_BOMB: level = 25;
			case WEAPON_SPRAYCAN: level = 9;
			case WEAPON_FIREEXTINGUISHER: level = 2;
			case WEAPON_CAMERA: level = 1;
			case WEAPON_PARACHUTE: level = 1;
*/

/*
	    {!"INFO: Láttál egy csalót/nem hagynak békén/segítség kéne? Írj az adminokna {" #XCOLOR_RED "}/report {" #XCOLOR_GREENYELLOW "}paranccsal, õk segítenek!"},
	    {!"INFO: Kellene teleport? Írd be {" #XCOLOR_BLUE "}/tele{" #XCOLOR_GREENYELLOW "}, vagy nyomd le az 'Y' gombot!"},
	    {!"INFO: Látogasd meg szerverünk weboldalát: {" #XCOLOR_BLUE "}wwww.nm-ss.tarhely.biz"},
	    {!"INFO: A szerver parancsaiért: {" #XCOLOR_BLUE "}/cmds."},
	    {!"INFO: A szerver szabályzatát itt találhatod meg: /rules! "},
	    {!"INFO: A szerver részletes leírását itt találhatod meg: {" #XCOLOR_BLUE "}/help."},
	    {!"INFO: Ha szeretnél V.I.P rangot és sok extra dolgot, csak támogatnod kell a szervert! /donate"},
	    {!"INFO: Ha találsz valamilyen hibát, akkor írd le és megpróbáljuk javítani: {" #XCOLOR_BLUE "}/bug <Hiba>."},
	    {!"INFO: Ha van egy jó ötleted, akkor írd le nekünk és lehet, hogy megvalósul: {" #XCOLOR_BLUE "}/idea <Szöveg>."},
	    {!"INFO: Unatkozol és szeretnél zenét hallgatni? Írd be {" #XCOLOR_BLUE "}/music, /radio, /david, /mchawer, /nota!"},
	    */