#if !defined SERVER_VERSION
    #error "Fordítasd az \"nmss.pwn\" fájlt, az \"NMSS_vehicles.pwn\" magában nem átfordítható!"
#endif

stock NMSS_vehicles()
{
	#define SPAWN_VEHICLES_RESPAWN      60
	
	// Spawnhely
	CreateDynamicVehicle(411,2104.5322300,1297.6132800,10.6000000,90.0000000,137,137, SPAWN_VEHICLES_RESPAWN); //Infernus
	CreateDynamicVehicle(411,2104.5319800,1273.9702100,10.6000000,90.0000000,137,137, SPAWN_VEHICLES_RESPAWN); //Infernus
	CreateDynamicVehicle(415,2104.5319800,1270.1839600,10.6623600,90.0000000,198,198, SPAWN_VEHICLES_RESPAWN); //Cheetah
	CreateDynamicVehicle(415,2104.5319800,1301.4838900,10.6623600,90.0000000,198,198, SPAWN_VEHICLES_RESPAWN); //Cheetah
	CreateDynamicVehicle(451,2104.5319800,1305.1628400,10.5846800,90.0000000,175,175, SPAWN_VEHICLES_RESPAWN); //Turismo
	CreateDynamicVehicle(451,2104.5319800,1266.5004900,10.5846800,90.0000000,175,175, SPAWN_VEHICLES_RESPAWN); //Turismo
	CreateDynamicVehicle(541,2104.5319800,1309.0684800,10.5000600,90.0000000,2,0, SPAWN_VEHICLES_RESPAWN); //Bullet
	CreateDynamicVehicle(541,2104.5319800,1262.6385500,10.5000600,90.0000000,2,0, SPAWN_VEHICLES_RESPAWN); //Bullet
	CreateDynamicVehicle(477,2104.5319800,1313.1633300,10.5592900,90.0000000,6,6, SPAWN_VEHICLES_RESPAWN); //ZR-350
	CreateDynamicVehicle(477,2104.5319800,1258.9239500,10.6342800,90.0000000,6,6, SPAWN_VEHICLES_RESPAWN); //ZR-350
	CreateDynamicVehicle(557,2104.5319800,1317.4174800,11.3486900,90.0000000,1,1, SPAWN_VEHICLES_RESPAWN); //Monster B
	CreateDynamicVehicle(557,2104.5319800,1254.3898900,11.5236900,90.0000000,1,1, SPAWN_VEHICLES_RESPAWN); //Monster B
	CreateDynamicVehicle(461,2104.8576700,1276.8546100,10.5162600,90.0000000,1,1, SPAWN_VEHICLES_RESPAWN); //PCJ-600
	CreateDynamicVehicle(521,2104.8576700,1278.2891800,10.4821300,90.0000000,3,3, SPAWN_VEHICLES_RESPAWN); //FCR-900
	CreateDynamicVehicle(522,2104.9306600,1279.7334000,10.4806900,90.0000000,128,6, SPAWN_VEHICLES_RESPAWN); //NRG-500
	CreateDynamicVehicle(522,2104.8576700,1291.6688200,10.4806900,90.0000000,6,128, SPAWN_VEHICLES_RESPAWN); //NRG-500
	CreateDynamicVehicle(521,2104.8576700,1293.1535600,10.4821300,90.0000000,3,3, SPAWN_VEHICLES_RESPAWN); //FCR-900
	CreateDynamicVehicle(461,2104.8576700,1294.6148700,10.5162600,90.0000000,1,1, SPAWN_VEHICLES_RESPAWN); //PCJ-600
	CreateDynamicVehicle(497,2152.0625000,1259.7137500,9.3650000,90.0000000,0,1, SPAWN_VEHICLES_RESPAWN); //Police Maverick
	CreateDynamicVehicle(510,2105.8356900,1247.9180900,10.5161500,90.0000000,162,0, SPAWN_VEHICLES_RESPAWN); //Mountain Bike
	CreateDynamicVehicle(481,2105.8356900,1246.3420400,10.4290900,90.0000000,135,142, SPAWN_VEHICLES_RESPAWN); //BMX
	CreateDynamicVehicle(468,2105.8356900,1244.6340300,10.5803100,90.0000000,226,194, SPAWN_VEHICLES_RESPAWN); //Sanchez
	CreateDynamicVehicle(495,2104.5319800,1322.2836900,11.3803900,90.0000000,243,152, SPAWN_VEHICLES_RESPAWN); //Sandking

	// David94 Háza
	CreateDynamicVehicle(520,1473.3041,-681.4099,95.4732,181.1843,-1,-1); // hydra
	CreateDynamicVehicle(425,1464.8497,-667.2090,95.3206,181.4799,-1,-1); // hunter
	CreateDynamicVehicle(495,1515.7384,-695.0979,95.0965,91.6123,-1,-1); // sandking
	CreateDynamicVehicle(411,1516.1248,-689.9482,94.4771,99.2922,-1,-1); // infernus
	CreateDynamicVehicle(522,1505.3298,-689.6100,94.3242,159.9623,-1,-1); // nrg-500
	CreateDynamicVehicle(522,1501.6128,-689.0887,94.3231,156.6745,-1,1-17); // nrg-500
	CreateDynamicVehicle(480,1485.7684,-696.8646,94.5238,241.6720,-1,-1); // comet
/*
    // Derby Deserten
	CreateDynamicVehicle(504, -652.859985, 2342.862061, 157.783295, 360, -1, -1); // spawnpoint
    CreateDynamicVehicle(504, -656.209351, 2343.090088, 157.939606, 360, -1, -1); // spawnpoint (1)
    CreateDynamicVehicle(504, -659.466309, 2343.588867, 158.104279, 360, -1, -1); // spawnpoint (2)
    CreateDynamicVehicle(504, -662.854126, 2344.247803, 158.281982, 349, -1, -1); // spawnpoint (3)
    CreateDynamicVehicle(504, -665.899231, 2345.495117, 158.471680, 349, -1, -1); // spawnpoint (4)
    CreateDynamicVehicle(504, -669.044983, 2347.190918, 158.686279, 349, -1, -1); // spawnpoint (5)
    CreateDynamicVehicle(504, -647.531128, 2343.347168, 157.573410, 11, -1, -1); // spawnpoint (6)
    CreateDynamicVehicle(504, -644.086365, 2344.687988, 157.518433, 11, -1, -1); // spawnpoint (7)
    CreateDynamicVehicle(504, -641.056396, 2345.792480, 157.515320, 360, -1, -1); // spawnpoint (8)
*/
	// Las Venturas Stunt Zone
    CreateDynamicVehicle(522, 2015.511475, 901.256348, 10.483401, 168, -1, -1);
    CreateDynamicVehicle(522, 2013.657227, 901.037964, 10.483401, 168, -1, -1);
    CreateDynamicVehicle(522, 2007.767456, 900.521423, 10.483401, 168, -1, -1);
    CreateDynamicVehicle(522, 2006.099121, 900.567505, 10.483401, 168, -1, -1);
	//CreateDynamicVehicle(522, 2011.748413, 901.045532, 10.483401, 168, -1, -1);
	//CreateDynamicVehicle(522, 2009.553101, 900.629578, 10.483401, 168, -1, -1);
/*
    CreateDynamicVehicle(522, 2003.993408, 900.377014, 10.483401, 168, -1, -1);
    CreateDynamicVehicle(522, 2002.007935, 900.383301, 10.483401, 168, -1, -1);
    CreateDynamicVehicle(522, 1997.918945, 900.485962, 10.483401, 168, -1, -1);
    CreateDynamicVehicle(522, 1995.876099, 900.964539, 10.483401, 168, -1, -1);
    CreateDynamicVehicle(522, 2000.006592, 900.401001, 10.483401, 168, -1, -1);
*/
/*
    CreateDynamicVehicle(522, 1833.496216, 1306.694336, 9.710540, 90, -1, -1);
    CreateDynamicVehicle(522, 1833.466309, 1302.338379, 9.712628, 90, -1, -1);
    CreateDynamicVehicle(522, 1833.471436, 1304.515869, 9.705672, 90, -1, -1);
    CreateDynamicVehicle(522, 1833.341797, 1300.504761, 9.688190, 90, -1, -1);
    CreateDynamicVehicle(522, 1833.575562, 1308.677856, 9.726130, 90, -1, -1);
    CreateDynamicVehicle(522, 1833.475830, 1298.976929, 9.714514, 90, -1, -1);
    CreateDynamicVehicle(522, 1833.572510, 1297.304199, 9.733486, 90, -1, -1);
*/
/*
	CreateDynamicVehicle(522, 2446.830078, 1363.673462, 10.483401, 67, -1, -1);
	CreateDynamicVehicle(522, 2447.472900, 1365.474365, 10.483401, 67, -1, -1);
	CreateDynamicVehicle(522, 2448.217041, 1367.194702, 10.483401, 67, -1, -1);
	CreateDynamicVehicle(522, 2451.052734, 1381.631836, 10.483401, 123, -1, -1);
*/
    CreateDynamicVehicle(522, 1814.383423, 1140.521606, 13.322970, 179, -1, -1);
    CreateDynamicVehicle(522, 1813.016479, 1140.454956, 13.359030, 179, -1, -1);
    CreateDynamicVehicle(522, 1811.420288, 1140.602783, 13.401136, 179, -1, -1);
    CreateDynamicVehicle(522, 1809.959961, 1140.622314, 13.439660, 179, -1, -1);
    CreateDynamicVehicle(522, 1808.340332, 1140.665161, 13.482388, 179, -1, -1);
    CreateDynamicVehicle(522, 1806.748901, 1140.657715, 13.524369, 179, -1, -1);
    CreateDynamicVehicle(522, 1805.091431, 1140.868530, 13.568092, 179, -1, -1);
/*
    CreateDynamicVehicle(522, 1970.952271, 756.476807, 10.480690, 360, -1, -1);
    CreateDynamicVehicle(522, 1969.417358, 756.265991, 10.480690, 360, -1, -1);
    CreateDynamicVehicle(522, 1968.097656, 756.314392, 10.480690, 360, -1, -1);
    CreateDynamicVehicle(522, 1966.324341, 756.144165, 10.480690, 360, -1, -1);
    CreateDynamicVehicle(522, 1964.670044, 755.694763, 10.480690, 360, -1, -1);
*/
/*
    CreateDynamicVehicle(522, 1374.235718, 868.902649, 6.626565, 225, -1, -1);
    CreateDynamicVehicle(522, 1384.740967, 868.765625, 6.899118, 237, -1, -1);
    CreateDynamicVehicle(522, 1383.590942, 866.870850, 6.630914, 248, -1, -1);
    CreateDynamicVehicle(522, 1375.252808, 874.937500, 7.407851, 248, -1, -1);
    CreateDynamicVehicle(522, 1377.874756, 872.863770, 7.221311, 248, -1, -1);
    CreateDynamicVehicle(522, 1370.841553, 871.221436, 6.822395, 248, -1, -1);
*/

	// Drift 1 Cars
	CreateDynamicVehicle(429,-304.468,1582.453,75.213,133.0,-1,-1);
    CreateDynamicVehicle(429,-302.129,1579.872,75.213,133.0,-1,-1);
    CreateDynamicVehicle(402,-299.754,1577.299,75.213,133.0,-1,-1);
    CreateDynamicVehicle(541,-297.384,1574.810,75.213,133.0,-1,-1);
    CreateDynamicVehicle(415,-295.141,1572.318,75.213,133.0,-1,-1);
    CreateDynamicVehicle(415,-292.865,1569.890,75.213,133.0,-1,-1);
    CreateDynamicVehicle(402,-290.379,1567.619,75.213,133.0,-1,-1);
    CreateDynamicVehicle(415,-287.580,1565.208,75.213,133.0,-1,-1);
/*
    CreateDynamicVehicle(480,-284.971,1562.591,75.213,133.0,-1,-1);
    CreateDynamicVehicle(562,-282.356,1560.381,75.213,133.0,-1,-1);
    CreateDynamicVehicle(562,-280.205,1557.905,75.213,133.0,-1,-1);
    CreateDynamicVehicle(587,-277.729,1555.308,75.213,133.0,-1,-1);
    CreateDynamicVehicle(587,-275.263,1552.730,75.213,133.0,-1,-1);
    CreateDynamicVehicle(565,-272.662,1550.099,75.213,133.0,-1,-1);
    CreateDynamicVehicle(565,-270.135,1547.976,75.213,133.0,-1,-1);
    CreateDynamicVehicle(411,-267.637,1545.018,75.213,133.0,-1,-1);
    CreateDynamicVehicle(411,-265.287,1542.588,75.213,133.0,-1,-1);
    // CreateDynamicVehicle(559,-263.055,1540.255,75.213,133.0,-1,-1);
    CreateDynamicVehicle(559,-314.802,1515.471,75.210,0.0,-1,-1);
    CreateDynamicVehicle(603,-317.916,1515.057,75.210,0.0,-1,-1);
    CreateDynamicVehicle(603,-321.216,1515.406,75.213,0.0,-1,-1);
    CreateDynamicVehicle(560,-324.178,1515.410,75.213,0.0,-1,-1);
    CreateDynamicVehicle(560,-327.056,1515.408,75.213,0.0,-1,-1);
    CreateDynamicVehicle(560,-330.371,1515.557,75.213,0.0,-1,-1);
    CreateDynamicVehicle(506,-333.629,1515.354,75.213,0.0,-1,-1);
    CreateDynamicVehicle(506,-336.455,1515.428,75.213,0.0,-1,-1);
    CreateDynamicVehicle(451,-339.791,1515.419,75.213,0.0,-1,-1);
    CreateDynamicVehicle(558,-342.658,1515.465,75.213,0.0,-1,-1);
    CreateDynamicVehicle(477,-345.651,1515.475,75.213,0.0,-1,-1);
*/
	// Parkoló Drift
    CreateDynamicVehicle(558,2235.9578,1938.6492,31.4344,179.7958,39,108); //
    CreateDynamicVehicle(558,2239.8513,1938.4910,31.4344,177.9547,39,108); //
    CreateDynamicVehicle(560,2222.7183,1932.3031,31.4975,271.1155,49,95); //
    CreateDynamicVehicle(560,2221.6843,1936.2137,31.4849,265.1660,49,95); //
    CreateDynamicVehicle(559,2222.5112,1940.4277,31.4220,269.8255,106,124); //
    CreateDynamicVehicle(559,2222.4600,1944.2981,31.4213,269.3494,106,124); //
    CreateDynamicVehicle(451,2222.5334,1948.3379,31.4781,272.1003,58,60); //
    CreateDynamicVehicle(451,2222.4546,1952.3936,31.4852,266.6991,58,60); //
    CreateDynamicVehicle(411,2222.3484,1956.4233,31.5060,269.3216,52,81); //
    CreateDynamicVehicle(411,2236.2859,1975.3827,31.5000,359.8513,52,81); //
    CreateDynamicVehicle(562,2239.9729,1975.6603,31.4281,359.3404,25,18); //
    CreateDynamicVehicle(415,2243.5745,1975.8795,31.5542,359.8644,68,29); //
    CreateDynamicVehicle(415,2247.6030,1975.4670,31.5544,0.4629,68,29); //
    CreateDynamicVehicle(562,2251.2656,1975.5140,31.4282,356.2037,25,18); //

	// LS Drift
	CreateDynamicVehicle(415,1278.789,-2011.262,58.739,89.0,10,-1);
    CreateDynamicVehicle(445,1278.806,-2016.680,58.759,89.0,5,-1);
    CreateDynamicVehicle(429,1278.700,-2021.420,58.779,89.0,20,-1);
    CreateDynamicVehicle(402,1278.817,-2027.055,58.800,89.0,32,-1);
    CreateDynamicVehicle(482,1279.210,-2032.470,58.816,89.0,100,-1);
    CreateDynamicVehicle(562,1279.152,-2037.934,58.838,89.0,106,-1);
    CreateDynamicVehicle(587,1279.333,-2043.017,58.855,89.0,125,-1);
    CreateDynamicVehicle(565,1242.953,-2009.725,59.761,270.0,80,-1);
    CreateDynamicVehicle(526,1242.904,-2014.769,59.955,270.0,13,-1);
    CreateDynamicVehicle(559,1242.468,-2020.132,59.931,270.0,5,-1);
    CreateDynamicVehicle(404,1242.510,-2025.179,59.933,270.0,-1,-1);
    CreateDynamicVehicle(477,1242.946,-2030.137,59.957,270.0,82,-1);
    CreateDynamicVehicle(506,1242.948,-2036.504,59.958,270.0,58,-1);
    CreateDynamicVehicle(451,1242.627,-2041.079,59.766,270.0,75,-1);

	// SF drift
    CreateDynamicVehicle(603,-2089.6235,-84.6768,34.9991,0.3187,-1,-1); //
    CreateDynamicVehicle(603,-2085.4741,-84.7887,34.9950,359.8503,-1,-1); //
    CreateDynamicVehicle(603,-2081.3838,-84.6931,34.9999,359.9374,-1,-1); //
    CreateDynamicVehicle(560,-2093.8013,-84.2313,34.8689,0.5712,-1,-1); //
    CreateDynamicVehicle(560,-2095.2681,-54.0210,35.0038,312.8941,-1,-1); //
    CreateDynamicVehicle(560,-2095.0752,-49.7752,34.9953,310.2728,-1,-1); //
    CreateDynamicVehicle(560,-2095.1907,-43.0211,34.9924,319.6749,-1,-1); //
    CreateDynamicVehicle(560,-2095.2881,-36.1695,35.0007,319.2531,-1,-1); //
    CreateDynamicVehicle(560,-2079.9666,-28.1514,35.0080,141.6213,-1,-1); //
    CreateDynamicVehicle(560,-2079.3279,-35.8916,34.9879,136.6276,-1,-1); //
    CreateDynamicVehicle(560,-2079.5264,-44.3253,34.9932,137.7113,-1,-1); //
    CreateDynamicVehicle(506,-2073.0894,-84.7634,34.8141,359.9793,-1,-1); //
    CreateDynamicVehicle(506,-2068.8086,-84.5418,34.8150,357.1127,-1,-1); //
    CreateDynamicVehicle(587,-2064.0098,-85.3884,34.7304,0.1056,-1,-1); //

	// Drift 7
    CreateDynamicVehicle(549,-778.3245,-1715.8400,96.7653,256.9160,-1,-1); //
    CreateDynamicVehicle(475,-777.6082,-1712.0370,96.6536,255.9866,-1,-1); //
    CreateDynamicVehicle(451,-776.6866,-1708.9502,96.9392,260.3958,-1,-1); //
    CreateDynamicVehicle(541,-776.1243,-1705.8527,96.9748,260.0793,-1,-1); //
    CreateDynamicVehicle(411,-775.5957,-1702.7343,97.1705,261.6097,-1,-1); //
/*
    CreateDynamicVehicle(562,-774.8351,-1699.4833,97.1142,260.6057,-1,-1); //
    CreateDynamicVehicle(562,-774.3054,-1696.3595,97.1303,260.9376,-1,-1); //
    CreateDynamicVehicle(562,-774.0130,-1693.3936,97.1429,263.3689,-1,-1); //
    CreateDynamicVehicle(411,-773.4949,-1690.2599,97.2587,263.8733,-1,-1); //
    CreateDynamicVehicle(541,-773.1588,-1687.0615,97.1651,264.8267,-1,-1); //
    CreateDynamicVehicle(451,-772.7673,-1683.6918,97.2712,266.6481,-1,-1); //
    CreateDynamicVehicle(475,-772.9743,-1680.5768,97.0671,268.3211,-1,-1); //
    CreateDynamicVehicle(549,-772.9390,-1677.2129,97.3028,270.7476,-1,-1); //
*/
	// Jizzy Stunt + Hajó DeathMath
    CreateDynamicVehicle(522, -2619.097656, 1417.953491, 6.754128, 282, -1, -1); //
    CreateDynamicVehicle(522, -2620.325195, 1421.742432, 6.754128, 282, -1, -1); //
    CreateDynamicVehicle(522, -2619.768555, 1420.409424, 6.754128, 282, -1, -1); //
    CreateDynamicVehicle(522, -2619.459961, 1419.180908, 6.754128, 282, -1, -1); //
    CreateDynamicVehicle(522, -2621.582031, 1426.265625, 6.754128, 282, -1, -1); //
    CreateDynamicVehicle(522, -2620.715332, 1423.170166, 6.754128, 282, -1, -1); //
    CreateDynamicVehicle(522, -2620.862549, 1424.565918, 6.754128, 282, -1, -1); //
    CreateDynamicVehicle(522, -2407.450439, 1543.411377, 13.143937, 339, -1, -1); //
    CreateDynamicVehicle(522, -2649.534668, 1447.704346, 6.700562, 271, -1, -1); //
    CreateDynamicVehicle(522, -2649.560791, 1449.409790, 6.702637, 271, -1, -1); //
    CreateDynamicVehicle(522, -2649.582275, 1450.953857, 6.702404, 271, -1, -1); //
    CreateDynamicVehicle(522, -2649.662842, 1452.653442, 6.701541, 271, -1, -1); //
    CreateDynamicVehicle(522, -2649.639648, 1454.395020, 6.701787, 271, -1, -1); //
    CreateDynamicVehicle(522, -2385.624756, 1554.911743, 13.394753, 90, -1, -1); //
	CreateDynamicVehicle(429,-2407.450,1543.411,13.144,339.0,-1,-1); //
	CreateDynamicVehicle(587,-2385.625,1554.912,13.395,90.0,-1,-1); //
	CreateDynamicVehicle(560,-2618.289,1367.463,6.823,89.0,-1,-1); // Sultan
	CreateDynamicVehicle(587,-2618.117,1371.145,6.855,89.0,-1,-1); // Euros
	CreateDynamicVehicle(411,-2617.938,1374.816,6.886,89.0,-1,-1); // Infernus
	CreateDynamicVehicle(559,-2617.924,1378.569,6.918,89.0,-1,-1); // Jester
	CreateDynamicVehicle(603,-2645.306,1355.940,6.939,270.0,-1,-1); // spawnpoint (19)
	CreateDynamicVehicle(506,-2645.220,1360.778,6.939,270.0,-1,-1); // spawnpoint (20)
	CreateDynamicVehicle(451,-2644.920,1365.429,6.937,270.0,-1,-1); // spawnpoint (21)
	CreateDynamicVehicle(558,-2644.929,1369.590,6.937,270.0,-1,-1); // spawnpoint (22)
	CreateDynamicVehicle(443,-2630.8386,1386.5295,7.7870,271.5955,86,43); // jizzy+
	CreateDynamicVehicle(443,-2630.8176,1391.1625,7.7374,269.7538,86,43); //
	CreateDynamicVehicle(559,-2645.2053,1374.1053,6.8210,270.7690,19,72); //
	CreateDynamicVehicle(424,-2645.3840,1379.0645,6.9477,269.4569,59,0); //
	CreateDynamicVehicle(431,-2657.2944,1438.5143,7.6195,103.4876,125,58); //

	// HopDeHop
    CreateDynamicVehicle(522, 323.553375, -1280.901978, 53.761478, 211, -1, -1);
    CreateDynamicVehicle(522, 325.049469, -1280.366211, 53.755943, 211, -1, -1);
    CreateDynamicVehicle(522, 326.361877, -1279.850952, 53.751022, 211, -1, -1);
    CreateDynamicVehicle(522, 327.771820, -1279.166138, 53.745544, 211, -1, -1);
    CreateDynamicVehicle(522, 328.967865, -1278.538940, 53.740826, 211, -1, -1);
    CreateDynamicVehicle(522, 330.272675, -1277.881470, 53.735722, 211, -1, -1);
    CreateDynamicVehicle(522, 331.587250, -1277.072754, 53.730362, 211, -1, -1);
    CreateDynamicVehicle(522, 333.104706, -1276.773315, 53.725109, 211, -1, -1);
/*
    // Drift 1-5 Vehicles
    CreateDynamicVehicle(558,-815.0685,-126.3295,63.1090,16.6135,61,99); //
    CreateDynamicVehicle(558,-818.2738,-127.2532,62.9882,11.4287,61,99); //
    CreateDynamicVehicle(560,-820.2191,-129.7527,62.9981,16.6680,17,55); //
    CreateDynamicVehicle(560,-823.1793,-131.2094,62.8920,24.0516,17,55); //
    CreateDynamicVehicle(402,-827.1208,-131.9969,62.7958,16.4189,96,48); //
    CreateDynamicVehicle(541,-834.5300,-131.4498,62.2323,13.6491,77,105); //
    CreateDynamicVehicle(541,-837.1536,-132.7790,62.0405,15.8747,77,105); //
    CreateDynamicVehicle(541,-841.1093,-134.4962,61.7195,7.9407,77,105); //
    CreateDynamicVehicle(541,-844.8372,-135.0058,61.3781,12.5324,77,105); //
    CreateDynamicVehicle(451,-851.4933,-137.2948,60.9063,14.3399,0,7); //
    CreateDynamicVehicle(451,-854.5460,-138.0691,60.5930,13.4086,0,7); //
*/
	// Drift 4 Cars
    CreateDynamicVehicle(411,-2392.405,-607.427,132.502,33.0,-1,-1);
    CreateDynamicVehicle(411,-2394.747,-609.148,132.502,33.0,-1,-1);
    CreateDynamicVehicle(411,-2397.377,-610.974,132.502,33.0,-1,-1);
    CreateDynamicVehicle(415,-2400.026,-612.749,132.502,33.0,-1,-1);
    CreateDynamicVehicle(415,-2416.678,-588.947,132.502,214.0,-1,-1);
    CreateDynamicVehicle(415,-2414.037,-587.183,132.502,214.0,-1,-1);
    CreateDynamicVehicle(559,-2411.678,-585.429,132.502,214.0,-1,-1);
    CreateDynamicVehicle(541,-2409.195,-583.691,132.502,214.0,-1,-1);
    CreateDynamicVehicle(541,-2403.301,-585.054,132.502,123.0,-1,-1);
    CreateDynamicVehicle(541,-2401.586,-587.494,132.502,123.0,-1,-1);
    CreateDynamicVehicle(551,-2399.742,-589.722,132.502,123.0,-1,-1);
    CreateDynamicVehicle(551,-2397.979,-591.999,132.502,123.0,-1,-1);
    CreateDynamicVehicle(560,-2396.330,-594.462,132.502,123.0,-1,-1);
    CreateDynamicVehicle(560,-2394.753,-597.020,132.502,123.0,-1,-1);
    CreateDynamicVehicle(565,-2393.138,-599.384,132.502,123.0,-1,-1);
    CreateDynamicVehicle(565,-2391.236,-601.693,132.502,123.0,-1,-1);
#if defined UVS
	// Tune <1-5> Cars
	CreateDynamicVehicle(560,-2710.6111,234.0499,3.9561,179.5247,10,0); // SF Whell Arc Angles
    CreateDynamicVehicle(558,-2710.8860,247.6344,3.8816,179.4199,108,49); //
    CreateDynamicVehicle(562,-2702.3359,246.8604,3.9114,183.2525,60,49); //
    CreateDynamicVehicle(565,-2701.8020,232.0393,3.8772,178.8138,73,23); //
    CreateDynamicVehicle(559,-2691.2075,222.8731,3.9081,89.4813,116,38); //
    CreateDynamicVehicle(541,2380.1389,1038.8962,10.4451,179.5016,35,88); // LV Normal Tune
    CreateDynamicVehicle(411,2396.4888,1038.0352,10.5623,184.8529,103,44); //
    CreateDynamicVehicle(402,2401.7861,1038.7220,10.5756,186.4452,26,38); //
    CreateDynamicVehicle(415,2408.0435,1039.6315,10.6346,182.0773,112,70); //
    CreateDynamicVehicle(410,2414.5586,1038.6155,10.4555,180.3567,123,65); //
    CreateDynamicVehicle(567,2642.2468,-2003.8053,13.3368,181.2315,72,80); //  LS Lowrider
    CreateDynamicVehicle(535,2656.0498,-2009.2327,13.2293,272.0233,5,89); //
    CreateDynamicVehicle(536,2650.2698,-1999.2330,13.2018,270.1145,16,114); //
    CreateDynamicVehicle(575,2662.5530,-1998.8063,13.0681,269.6692,2,90); //
    CreateDynamicVehicle(534,2665.4141,-2009.0137,13.1890,266.6838,14,21); //
    CreateDynamicVehicle(576,2678.5781,-2008.8157,13.0778,271.5360,7,40); //
	CreateDynamicVehicle(422,1015.5489,-1044.5609,31.5231,266.6583,10,7); // Tune 5
	CreateDynamicVehicle(466,1026.7705,-1044.7678,31.2890,265.8516,10,7);
	CreateDynamicVehicle(507,1036.2610,-1044.8435,31.7227,271.8755,10,7);
	CreateDynamicVehicle(506,1053.3616,-1033.9148,31.7825,269.9296,1,35);
#endif
   	// Hangar SF Airport
	CreateDynamicVehicle(522,-1373.8726,-262.4546,13.7170,315.0000,13, 6); // NRG500
	CreateDynamicVehicle(522,-1371.9263,-264.3422,13.7163,315.0000, 1, 3); // NRG500
    CreateDynamicVehicle(522,-1369.9971,-266.2287,13.7170,315.0000, 1,79); // NRG500
    CreateDynamicVehicle(522,-1368.1353,-267.9540,13.7269,315.0000,86, 0); // NRG500
	CreateDynamicVehicle(522,-1366.1121,-269.9810,13.7188,315.0000,14,36); // NRG500
    CreateDynamicVehicle(522,-1364.3026,-271.8025,13.7186,315.0000,13, 6); // NRG500
    CreateDynamicVehicle(522,-1362.0038,-273.8415,13.7202,315.0000, 1, 3); // NRG500
	CreateDynamicVehicle(522,-1377.4534,-259.0116,13.7122,315.0000,13,6);  // NRG500
	CreateDynamicVehicle(522,-1379.3185,-257.0810,13.7131,315.0000,14,36); // NRG500
	CreateDynamicVehicle(522,-1381.5176,-254.9715,13.7222,315.0000, 1, 3); // NRG500
	CreateDynamicVehicle(522,-1383.3665,-253.0600,13.7134,315.0000,86, 0); // NRG500
	CreateDynamicVehicle(522,-1385.1018,-251.3301,13.7134,315.0000, 1, 3); // NRG500
	CreateDynamicVehicle(522,-1386.8523,-249.5515,13.7118,315.0000,13, 6); // NRG500
    CreateDynamicVehicle(444,-1392.4282,-243.9711,14.0000,225.0000, 1, 1); // MonsterA
	CreateDynamicVehicle(444,-1389.3508,-240.9302,14.0000,225.0000, 1, 1); // MonsterA
    CreateDynamicVehicle(471,-1351.8312,-273.2545,13.6289, 45.0000, 8, 8); // Quad
	CreateDynamicVehicle(471,-1349.5969,-271.1838,13.6297, 45.0000, 8, 8); // Quad
	CreateDynamicVehicle(471,-1351.8423,-268.9930,13.6299, 45.0000, 8, 8); // Quad
	CreateDynamicVehicle(471,-1354.2938,-270.6590,13.6287, 45.0000, 8, 8); // Quad
	CreateDynamicVehicle(481,-1348.1514,-269.1584,13.6641, 45.0000, 3, 3); // BMX
	CreateDynamicVehicle(481,-1346.5349,-267.5531,13.6636, 45.0000, 3, 3); // BMX
	CreateDynamicVehicle(481,-1344.8788,-265.9043,13.6638, 45.0000, 3, 3); // BMX
	CreateDynamicVehicle(571,-1340.6250,-261.9517,13.4319, 45.0000,79,79); // Kart
	CreateDynamicVehicle(571,-1342.4913,-260.0414,13.4289, 45.0000,79,79); // Kart
	CreateDynamicVehicle(571,-1341.3103,-258.8981,13.4279, 45.0000,79,79); // Kart
	CreateDynamicVehicle(571,-1339.4626,-260.8037,13.4290, 45.0000,79,79); // Kart
	CreateDynamicVehicle(411,-1338.0559,-257.1164,13.8755, 45.0000, 8, 8); // Infernus
	CreateDynamicVehicle(411,-1335.1530,-254.1786,13.7735, 45.0000, 8, 8); // Infernus
	CreateDynamicVehicle(411,-1332.4734,-251.4005,13.7734, 45.0000, 8, 8); // Infernus
	CreateDynamicVehicle(541,-1329.9636,-248.4910,13.7732, 45.0000, 1, 0); // Bullet
	CreateDynamicVehicle(541,-1327.0488,-245.8576,13.7740, 45.0000, 1, 0); // Bullet
	CreateDynamicVehicle(541,-1324.1519,-243.0222,13.7734, 45.0000, 1, 0); // Bullet
	CreateDynamicVehicle(451,-1386.3595,-237.5734,13.8755,225.0000,99,99); // Turismo
	CreateDynamicVehicle(451,-1383.9292,-234.7424,13.8542,225.0000,99,99); // Turismo
	CreateDynamicVehicle(451,-1381.0438,-231.5789,13.8549,225.0000,99,99); // Turismo
	CreateDynamicVehicle(451,-1378.6849,-228.1469,13.8549,225.0000,99,99); // Turismo
	CreateDynamicVehicle(531,-1375.4926,-226.2805,14.1011,225.0000,25,25); // tractor
	CreateDynamicVehicle(560,-1373.1289,-223.2703,13.8499,225.0000, 1, 1); // Sultan
	CreateDynamicVehicle(522,-1371.6478,-220.2627,13.7178,225.0000,86, 0); // NRG500
	CreateDynamicVehicle(522,-1369.8684,-218.5093,13.7247,225.0000, 1, 3); // NRG500
	CreateDynamicVehicle(522,-1368.0232,-216.6941,13.7162,225.0000,13, 6); // NRG500
	CreateDynamicVehicle(522,-1366.4310,-215.0479,13.7184,225.0000,14,36); // NRG500
	CreateDynamicVehicle(522,-1364.7598,-213.3435,13.7183,225.0000, 1, 3); // NRG500
    CreateDynamicVehicle(519,-1617.0944,-303.8110,15.0694,22.4970,1,1); // sfa crs
    CreateDynamicVehicle(482,-1344.0409,-262.9405,14.2678,44.9452,84,89); // hangar
    CreateDynamicVehicle(603,-1361.6049,-211.8938,13.9871,223.1583,48,111); //
    CreateDynamicVehicle(603,-1358.5515,-209.0974,13.9868,221.8166,48,111); //
    CreateDynamicVehicle(522,-1375.2507,-260.3685,13.7154,311.3380,5,100); //
/*
    CreateDynamicVehicle(522,-1661.5524,-214.0085,13.7133,311.3805,0,10); // stunt1 sfa
    CreateDynamicVehicle(522,-1662.6268,-212.4662,13.7196,319.8576,0,10); // stunt1 sfa
    CreateDynamicVehicle(522,-1663.7068,-211.5915,13.7174,320.1416,0,10); // stunt1 sfa
    CreateDynamicVehicle(522,-1664.4160,-209.9669,13.7179,325.3831,0,10); // stunt1 sfa
    CreateDynamicVehicle(522,-1665.3055,-209.0370,13.7241,323.5927,0,10); // stunt1 sfa
*/
	CreateDynamicVehicle(519,-1187.5164,-42.6859,31.9270,314.8976,19,101); // SFA Planes
	CreateDynamicVehicle(519,-1165.4120,-64.7932,31.8873,312.3375,94,111); //
	CreateDynamicVehicle(476,-1154.9585,-81.6477,31.7425,311.8488,42,60); //
	CreateDynamicVehicle(417,-1134.4761,-94.0465,32.1628,313.3005,53,115); //
	CreateDynamicVehicle(520,-1143.6306,-89.1031,31.8060,313.6121,26,17); //
	CreateDynamicVehicle(487,-1177.2015,-51.5757,31.1844,314.6484,6,106); //
#if defined UVS
	// SF BIgjump
	CreateDynamicVehicle(411,-576.437,904.115,437.889,134.0,-1,-1);
    CreateDynamicVehicle(411,-589.209,914.255,437.479,134.0,-1,-1);
    CreateDynamicVehicle(411,-598.969,921.085,435.798,134.0,-1,-1);
    CreateDynamicVehicle(411,-572.283,911.627,438.134,134.0,-1,-1);
    CreateDynamicVehicle(411,-586.917,925.202,437.576,134.0,-1,-1);
    CreateDynamicVehicle(411,-584.754,906.576,438.269,134.0,-1,-1);
    CreateDynamicVehicle(411,-576.262,922.649,441.839,134.0,-1,-1);
#endif
    // Airport
	CreateDynamicVehicle(447,-1423.7057,-266.4802,29.0000,225.2355,1,1); // Seaspar
	CreateDynamicVehicle(460,-1549.0000,-263.5101, 14.5000,27.5000,1,1); // Skimmer
	CreateDynamicVehicle(487,-1494.8989,-248.8462, 14.5000,35.2000,1,1); // Maverick
	CreateDynamicVehicle(487,-1443.1107,-520.0154,14.5000,209.3651,1,1); // Maverick
	CreateDynamicVehicle(513,-1383.7621,-483.0692,14.5000,207.5057,1,1); // Stuntplane
	CreateDynamicVehicle(513,-1361.0543,-467.7611,14.5000,198.3902,1,1); // Stuntplane
	CreateDynamicVehicle(513,-1586.2341,-568.6579,14.5000,209.0987,1,1); // Stuntplane
	CreateDynamicVehicle(513,-1203.8029, 178.8728,14.5000, 93.4516,1,1); // Stuntplane
	CreateDynamicVehicle(519,-1579.9270,-678.8997,14.5000,  3.3460,1,1); // Shamal
	CreateDynamicVehicle(519,-1656.5577,-400.4685,14.5000, 24.1464,1,1); // Shamal
	CreateDynamicVehicle(593,-1318.2959,-352.8320,14.5000,237.5523,1,1); // Dodo
	CreateDynamicVehicle(593,-1508.1389,-536.6498,14.5000,200.8066,1,1); // Dodo
	CreateDynamicVehicle(593,-1290.4484,-344.9474,14.5000,254.1266,1,1); // Dodo
	CreateDynamicVehicle(577,-1295.3870,-575.2518,15.0000,133.8013,1,1); // AT400
	CreateDynamicVehicle(485,-1374.8671,-524.8354,13.8336,296.5283,1,1); // Baggage
	CreateDynamicVehicle(485,-1376.2766,-521.7865,13.8328,296.2556,1,1); // Baggage
	CreateDynamicVehicle(485,-1378.0043,-518.6993,13.8298,296.1978,1,1); // Baggage
	CreateDynamicVehicle(485,-1379.6494,-515.2647,13.8292,297.3530,1,1); // Baggage
	CreateDynamicVehicle(608,-1329.5027,-502.5110,13.8328,116.9943,1,1); // TugStair
	CreateDynamicVehicle(608,-1331.3389,-499.1902,13.8296,116.0873,1,1); // TugStair
	CreateDynamicVehicle(608,-1332.7628,-496.3539,13.8303,116.3358,1,1); // TugStair
	CreateDynamicVehicle(608,-1334.5317,-492.3205,13.8328,116.6575,1,1); // TugStair
	CreateDynamicVehicle(606,-1386.4440,-500.6428,13.8356,294.6635,1,1); // BagBoxA
	CreateDynamicVehicle(606,-1384.0209,-505.0760,13.8300,297.4223,1,1); // BagBoxA
/*
	// LSA Jump
	CreateDynamicVehicle(411,1520.344,-2733.562,140.233,349.0,-1,-1);
    CreateDynamicVehicle(411,1514.933,-2734.992,140.780,349.0,-1,-1);
    CreateDynamicVehicle(411,1510.786,-2733.611,140.530,349.0,-1,-1);
    CreateDynamicVehicle(411,1506.826,-2732.779,139.603,349.0,-1,-1);
    CreateDynamicVehicle(411,1502.613,-2731.441,139.625,349.0,-1,-1);
    CreateDynamicVehicle(411,1498.858,-2730.514,138.418,349.0,-1,-1);

	// AA Jump
    CreateDynamicVehicle(411,830.783,2494.839,252.884,78.0,-1,-1);
    CreateDynamicVehicle(411,828.559,2499.953,253.042,89.0,-1,-1);
    CreateDynamicVehicle(411,824.104,2504.883,253.534,89.0,-1,-1);
    CreateDynamicVehicle(411,821.303,2493.829,253.284,55.0,-1,-1);
    CreateDynamicVehicle(411,834.272,2504.783,253.784,89.0,-1,-1);
    CreateDynamicVehicle(411,840.375,2493.901,252.034,78.0,-1,-1);
    CreateDynamicVehicle(411,836.685,2500.130,254.731,101.0,-1,-1);
    CreateDynamicVehicle(411,827.291,2510.954,254.034,101.0,-1,-1);

	// AA [SU]Kurta999
	CreateDynamicVehicle(608, 386.5729,2471.7349, 16.0711,270.0000,1,1); // TugStair
	CreateDynamicVehicle(608, 385.8385,2467.1509, 16.0714,270.0000,1,1); // TugStair
	CreateDynamicVehicle(485, 422.8667,2473.0918, 16.0636, 90.0000,1,1); // Baggage
	CreateDynamicVehicle(513, 404.4107,2438.3262, 16.5000,  0.0000,1,1); // Stuntplane
    CreateDynamicVehicle(445, 428.380859, 2523.055176, 16.225374, 78, -1, -1); // spawnpoint
    CreateDynamicVehicle(694, 427.139862, 2515.723633, 16.225374, 89, -1, -1); // spawnpoint (1)
    CreateDynamicVehicle(403, 427.364014, 2488.756836, 16.304375, 97, -1, -1); // spawnpoint (3)
    CreateDynamicVehicle(411, 428.523407, 2482.727051, 16.304375, 101, -1, -1); // spawnpoint (4)
    CreateDynamicVehicle(535, 402.837494, 2529.590088, 16.317675, 78, -1, -1); // spawnpoint (5)
    CreateDynamicVehicle(425,365.0307,2536.9585,17.1867,181.8782,119,7); // aa hunter
    CreateDynamicVehicle(520,289.6496,2542.1677,17.5422,177.2307,115,125); //
    CreateDynamicVehicle(461,433.7835,2527.9492,16.4129,88.0798,118,71); //
    CreateDynamicVehicle(476,325.3965,2538.1809,17.5220,179.7639,115,39); //
    CreateDynamicVehicle(417,345.4040,2540.3381,16.8086,185.1087,15,98); //
    CreateDynamicVehicle(494,428.2679,2514.7761,16.3799,92.9247,78,24); //
    CreateDynamicVehicle(601,396.4599,2545.7371,16.2948,150.0659,10,7); //
    CreateDynamicVehicle(402,420.3327,2544.0652,16.1475,272.7163,117,44); // aa+
*/
	// DamStunt
	CreateDynamicVehicle(522,-473.1689,2201.0247,46.3099,113.7809, 6, 6); // NRG500
	CreateDynamicVehicle(522,-474.8620,2202.2476,46.6067,120.3340, 1,25); // NRG500
	CreateDynamicVehicle(522,-476.5524,2204.0415,46.9294,121.7986, 6, 6); // NRG500
	CreateDynamicVehicle(522,-477.8897,2205.7019,47.1974,128.0953, 8, 8); // NRG500
	CreateDynamicVehicle(522,-479.3735,2206.9473,47.4695,131.8716, 3, 6); // NRG500
	CreateDynamicVehicle(522,-480.5000,2208.4629,47.6922,130.9934,75,75); // NRG500
	CreateDynamicVehicle(522,-482.0541,2210.1323,48.0020,127.7250, 3, 6); // NRG500
	CreateDynamicVehicle(522,-483.7692,2211.7053,48.3213,118.5749, 3, 3); // NRG500
	CreateDynamicVehicle(522,-485.6384,2213.2954,48.6635,121.7395, 8, 8); // NRG500
	CreateDynamicVehicle(522,-486.3483,2216.0369,48.8562,107.8466, 3, 8); // NRG500
	CreateDynamicVehicle(522,-486.4772,2218.5896,48.9447, 94.9922,75, 3); // NRG500
	CreateDynamicVehicle(564,-466.2542,2179.5547,45.9925,145.1836,0,0); // Tiger
	CreateDynamicVehicle(564,-465.6033,2182.1926,45.9538,146.3549,0,0); // Tiger
	CreateDynamicVehicle(501,-463.7964,2179.5083,46.4228,84.0878,14,75); // Goblin
	CreateDynamicVehicle(501,-463.5777,2182.7415,46.4174,82.7152,14,75); // Goblin
	CreateDynamicVehicle(465,-464.4675,2176.5454,46.5985,82.8555,14,75); // Raider
	CreateDynamicVehicle(441,-460.2057,2180.9658,46.2159,337.1051,82,54); // Bandit
	CreateDynamicVehicle(441,-460.5104,2178.9111,46.2564,337.4354,67,98); // Bandit
	CreateDynamicVehicle(594,-461.1044,2177.0090,46.4079,300.0304,0,0); // RCCam
	CreateDynamicVehicle(594,-461.5025,2175.5332,46.5022,300.0304,0,0); // RCCam
	CreateDynamicVehicle(606,-438.6306,2217.2607,42.3859,92.8172,1,1); // BagboxA
	CreateDynamicVehicle(606,-444.3248,2216.9851,42.3902,92.7406,1,1); // BagboxA
	CreateDynamicVehicle(485,-450.2059,2216.8816,41.9977,91.0538,1,73); // Baggage
#if defined UVS
	// Dam 2
	CreateDynamicVehicle(522,-705.4767,1835.5991,6.5478,344.4536,6,6); // dam2 nrg
    CreateDynamicVehicle(522,-703.7322,1834.9921,6.5515,347.3691,6,6); //
    CreateDynamicVehicle(522,-702.2764,1834.4377,6.5521,348.1216,6,6); //
    CreateDynamicVehicle(522,-700.3210,1834.0103,6.5496,353.1209,6,6); //
    CreateDynamicVehicle(522,-698.4727,1834.3662,6.5476,350.5292,6,6); //
    CreateDynamicVehicle(522,-696.4486,1834.0509,6.5512,351.5981,6,6); //
    CreateDynamicVehicle(522,-694.8809,1833.6796,6.5467,351.0300,6,6); //
    CreateDynamicVehicle(522,-693.2384,1833.0883,6.5480,350.3303,6,6); //
    CreateDynamicVehicle(522,-691.5160,1833.0272,6.5484,346.1128,6,6); //
    CreateDynamicVehicle(522,-690.1434,1832.9249,6.5506,347.0327,6,6); //
    CreateDynamicVehicle(411,-700.6801,1846.2837,6.7225,262.2434,0,7); //
    CreateDynamicVehicle(411,-699.4017,1851.2722,6.7229,255.4237,0,7); //
    CreateDynamicVehicle(471,-681.6776,1851.7411,6.6262,77.8730,23,15); //
    CreateDynamicVehicle(471,-682.8735,1850.0500,6.6264,73.0103,23,15); //
    CreateDynamicVehicle(464,-681.7190,1843.6733,6.2738,77.4364,0,7); //
#endif
	// Skatepark
    CreateDynamicVehicle(481,1905.072,-1448.523,13.127,0.0,-1,-1);
    CreateDynamicVehicle(522,1927.437,-1448.341,13.129,0.0,-1,-1);
    CreateDynamicVehicle(522,1924.117,-1448.336,13.129,0.0,-1,-1);
    CreateDynamicVehicle(521,1920.692,-1448.328,13.129,0.0,-1,-1);
    CreateDynamicVehicle(461,1917.474,-1448.191,13.130,0.0,-1,-1);
    CreateDynamicVehicle(581,1914.483,-1448.081,13.131,0.0,-1,-1);
    CreateDynamicVehicle(468,1911.373,-1448.405,13.124,0.0,-1,-1);
    CreateDynamicVehicle(571,1908.043,-1448.595,13.127,0.0,-1,-1);
    CreateDynamicVehicle(510,1926.525,-1437.324,13.219,178.0,-1,-1);
    CreateDynamicVehicle(448,1924.045,-1437.444,13.218,178.0,-1,-1);
    CreateDynamicVehicle(481,1921.184,-1437.490,13.217,178.0,-1,-1);
    CreateDynamicVehicle(521,1918.198,-1437.593,13.217,178.0,-1,-1);
    CreateDynamicVehicle(481,1915.107,-1437.402,13.218,178.0,-1,-1);
    CreateDynamicVehicle(510,1912.131,-1437.646,13.216,178.0,-1,-1);
    CreateDynamicVehicle(571,1909.522,-1437.732,13.215,178.0,-1,-1);
    CreateDynamicVehicle(468,1905.633,-1437.841,13.213,178.0,-1,-1);
/*
    // Area51 Kocsik
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(433, 346.676056, 1946.381470, 18.210625, 89, -1, -1), DM_ZONE_AREA51); // spawnpoint (2)
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(433, 348.264465, 1998.042603, 18.210625, 89, -1, -1), DM_ZONE_AREA51); // spawnpoint (3)
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(433, 347.999847, 1990.559814, 18.210625, 89, -1, -1), DM_ZONE_AREA51); // spawnpoint (5)
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(433, 347.474060, 1956.686768, 18.210625, 89, -1, -1), DM_ZONE_AREA51); // spawnpoint (6)
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(433, 297.892120, 2050.693359, 18.210625, 179, -1, -1), DM_ZONE_AREA51); // spawnpoint (7)
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(433, 308.404205, 2050.848633, 18.210625, 179, -1, -1), DM_ZONE_AREA51); // spawnpoint (8)
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(433, 347.734375, 1974.409668, 18.210625, 89, -1, -1), DM_ZONE_AREA51); // spawnpoint (9)
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(433, 347.603638, 1982.130859, 18.210627, 89, -1, -1), DM_ZONE_AREA51); // spawnpoint (11)
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(520,278.1382,1953.1364,18.3642,267.9320,106,123), DM_ZONE_AREA51); // a51  hydra
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(520,276.3127,1990.4886,18.3638,267.4479,106,123), DM_ZONE_AREA51); // a51  hydra
	SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(425,370.7137,1935.1808,18.2085,97.7594,21,120), DM_ZONE_AREA51); // a51  hunter
	SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(539,195.6624,1973.2952,17.0042,210.9728,61,175), DM_ZONE_AREA51); // a51  vortex
*/
	// BigJump
    CreateDynamicVehicle(522, -666.290039, 2298.881836, 135.671906, 360, -1, -1); //
    CreateDynamicVehicle(522, -664.945313, 2298.893311, 135.858490, 360, -1, -1); //
    CreateDynamicVehicle(522, -663.712830, 2299.038330, 135.791565, 360, -1, -1); //
    CreateDynamicVehicle(522, -662.252808, 2299.325439, 135.712311, 360, -1, -1); //
    CreateDynamicVehicle(522, -660.690063, 2299.483643, 135.627457, 360, -1, -1); //
    CreateDynamicVehicle(522, -658.761780, 2299.720703, 135.522766, 360, -1, -1); //
    CreateDynamicVehicle(522, -662.362549, 2313.834229, 142.597870, 89, -1, -1); //
    CreateDynamicVehicle(522, -662.398315, 2315.153809, 142.597870, 89, -1, -1); //
    CreateDynamicVehicle(522, -662.467651, 2316.273193, 142.597870, 89, -1, -1); //
    CreateDynamicVehicle(522, -662.475220, 2317.126465, 142.597870, 89, -1, -1); //
    CreateDynamicVehicle(522, -662.396118, 2317.882813, 142.597870, 89, -1, -1); //

	//AquaPark
	CreateDynamicVehicle(493,253.6098,-1917.8197,-0.1049,180.9621,36,13); // Jetmax
	CreateDynamicVehicle(493,264.7177,-1917.2307,-0.1223,181.6459,36,13); // Jetmax
	CreateDynamicVehicle(493,275.6197,-1917.8173,-0.0792,180.5575,36,13); // Jetmax
	CreateDynamicVehicle(493,286.7505,-1917.6251,-0.1524,180.8557,36,13); // Jetmax
    CreateDynamicVehicle(473,270.419,-1931.859,0.360,182.0,-1,-1);
    CreateDynamicVehicle(473,248.234,-1932.092,0.360,178.0,-1,-1);
    CreateDynamicVehicle(473,292.121,-1932.418,0.350,182.0,-1,-1);
#if defined UVS
	//FreeWay
	CreateDynamicVehicle(568,-2843.1000,2182.5000,799.7175,178.9291,13,6); // Bandito
	CreateDynamicVehicle(568,-2843.1000,2189.0000,799.7418,181.5981,13,6); // Bandito
	CreateDynamicVehicle(568,-2843.1000,2196.0000,799.9264,180.9663,13,6); // Bandito
	CreateDynamicVehicle(568,-2851.0000,2182.5000,799.7468,178.3719,13,6); // Bandito
	CreateDynamicVehicle(568,-2851.0000,2189.0000,799.7274,178.9721,13,6); // Bandito
	CreateDynamicVehicle(568,-2851.0000,2196.0000,799.8974,176.6867,13,6); // Bandito

	// MonsterParkour
	CreateDynamicVehicle(556, 495.557922, -1883.191895, 3.198795, 166, -1, -1); //
    CreateDynamicVehicle(556, 491.197723, -1882.198975, 3.426163, 166, -1, -1); //
    CreateDynamicVehicle(556, 487.035095, -1881.001221, 3.476131, 166, -1, -1); //
    CreateDynamicVehicle(556, 504.958252, -1885.337524, 3.341564, 166, -1, -1); //
    CreateDynamicVehicle(556, 499.892609, -1884.317261, 3.433397, 166, -1, -1); //
    CreateDynamicVehicle(556, 489.124084, -1873.692749, 3.011925, 166, -1, -1); //
    CreateDynamicVehicle(556, 493.080353, -1874.523438, 3.239823, 166, -1, -1); //
    CreateDynamicVehicle(556, 506.379669, -1877.839233, 3.057039, 166, -1, -1); //
#endif
/*
    // Grove Street BMX
    CreateDynamicVehicle(481, 2427.352295, -1633.519043, 13.022875, 271, -1, -1);
    CreateDynamicVehicle(481, 2427.407959, -1634.909302, 13.034717, 271, -1, -1);
    CreateDynamicVehicle(481, 2427.343994, -1636.246094, 13.046188, 271, -1, -1);
    CreateDynamicVehicle(481, 2427.333008, -1637.884766, 13.059971, 271, -1, -1);
    CreateDynamicVehicle(481, 2427.370850, -1639.030640, 13.069205, 271, -1, -1);
    CreateDynamicVehicle(481, 2427.487061, -1640.265869, 13.079159, 271, -1, -1);
    CreateDynamicVehicle(481, 2427.596436, -1641.579590, 13.089746, 271, -1, -1);
    CreateDynamicVehicle(481, 2427.508301, -1642.797363, 13.099560, 271, -1, -1);
    CreateDynamicVehicle(567,2510.5879,-1661.7539,13.4573,20.4685, -1, -1);
    CreateDynamicVehicle(520,2532.6226,-1676.0642,20.6890,95.9487, -1, -1);
    CreateDynamicVehicle(603,2519.5625,-1710.9072,13.3561,270.3447, -1, -1);
    CreateDynamicVehicle(468,2531.1904,-1688.5033,13.6441,61.9293, -1, -1);
    CreateDynamicVehicle(429,2420.0107,-1686.8130,13.4243,358.2581, -1, -1);
    CreateDynamicVehicle(514,2442.9932,-1641.2759,14.0354,178.0502, -1, -1);
    CreateDynamicVehicle(425,2509.7898,-1717.6259,19.3850,270.9527, -1, -1);
    CreateDynamicVehicle(432,2432.4106,-1675.2197,13.6840,271.3936, -1, -1);
    CreateDynamicVehicle(600,2473.5225,-1696.3251,13.2352,357.7539, -1, -1);
    CreateDynamicVehicle(510,2495.0359,-1647.3348,13.1288,171.6284, -1, -1);
    CreateDynamicVehicle(431,2372.4209,-1642.7125,14.0275,180.3127, -1, -1);
    CreateDynamicVehicle(431,2378.6230,-1641.3330,14.0222,183.4894, -1, -1);
    CreateDynamicVehicle(434,2406.8601,-1718.2657,13.6279,182.8458, -1, -1);
    CreateDynamicVehicle(492,2508.5500,-1676.5352,13.2394,147.4076, -1, -1);
    CreateDynamicVehicle(412,2500.4941,-1682.8517,13.1373,100.2446, -1, -1);
    CreateDynamicVehicle(576,2489.8037,-1684.1427,13.0284,93.8657, -1, -1);
*/
	// SF Stunt Jump
    //CreateDynamicVehicle(415,-1562.899,125.584,415.561,0.0,-1,-1);
    //CreateDynamicVehicle(415,-1556.504,125.400,415.311,0.0,-1,-1);
    //CreateDynamicVehicle(415,-1550.270,125.074,415.637,0.0,-1,-1);
    //CreateDynamicVehicle(415,-1544.261,125.247,415.487,0.0,-1,-1);
    //CreateDynamicVehicle(415,-1546.823,135.857,416.562,182.0,-1,-1);
    //CreateDynamicVehicle(415,-1540.590,135.492,416.637,178.0,-1,-1);
    // CreateDynamicVehicle(415,-1543.367,143.758,415.936,0.0,-1,-1);
    //CreateDynamicVehicle(415,-1562.719,155.268,414.237,178.0,-1,-1);
    //CreateDynamicVehicle(415,-1556.395,155.121,415.136,178.0,-1,-1);
    //CreateDynamicVehicle(415,-1550.146,154.855,415.962,178.0,-1,-1);
    //CreateDynamicVehicle(415,-1543.570,155.010,415.962,178.0,-1,-1);
       

    CreateDynamicVehicle(415,-1559.752,125.621,415.086,0.0,-1,-1);
    CreateDynamicVehicle(415,-1553.342,125.064,415.036,0.0,-1,-1);
    CreateDynamicVehicle(415,-1547.140,125.223,415.112,0.0,-1,-1);
    CreateDynamicVehicle(415,-1540.487,124.622,415.962,0.0,-1,-1);
    CreateDynamicVehicle(415,-1543.495,135.748,417.112,178.0,-1,-1);
    CreateDynamicVehicle(415,-1546.677,143.899,416.062,0.0,-1,-1);
    CreateDynamicVehicle(415,-1540.207,143.822,416.212,0.0,-1,-1);
    CreateDynamicVehicle(415,-1559.741,154.986,415.061,178.0,-1,-1);
    CreateDynamicVehicle(415,-1553.251,154.777,415.962,178.0,-1,-1);
    CreateDynamicVehicle(415,-1546.943,155.119,415.712,178.0,-1,-1);
    CreateDynamicVehicle(415,-1540.516,155.130,415.212,178.0,-1,-1);
    
    //sf cars
    CreateDynamicVehicle(482,-1986.0963,216.1789,27.8066,90.5399,86,94); //
    CreateDynamicVehicle(482,-1986.4808,209.6192,27.8081,91.6799,86,94); //
    CreateDynamicVehicle(482,-1986.7380,203.9462,27.8070,89.5459,86,94); //
    CreateDynamicVehicle(468,-1972.8362,170.9229,27.2772,263.4885,33,102); //
    //CreateDynamicVehicle(471,-2035.5415,181.2576,28.4898,184.7240,71,53); //
    //CreateDynamicVehicle(471,-2033.4159,180.3250,28.4903,179.6890,71,53); //
    //CreateDynamicVehicle(481,-2028.8604,181.2754,28.3526,189.6735,60,104); //
    //CreateDynamicVehicle(481,-2027.3662,181.2692,28.3538,175.4438,60,104); //
    //CreateDynamicVehicle(481,-2026.1267,181.2985,28.3541,178.8299,60,104); //
    CreateDynamicVehicle(522,-1911.9143,287.7786,40.6176,189.3641,0,7); //
    CreateDynamicVehicle(522,-2035.2708,167.3403,28.4092,269.3777,0,7); //
    CreateDynamicVehicle(522,-2035.7617,168.7230,28.4054,269.8426,0,7); //
    CreateDynamicVehicle(522,-2035.7823,169.7960,28.4089,271.5139,0,7); //
    CreateDynamicVehicle(402,-2029.6075,156.0258,28.5969,176.0030,53,16); //
    CreateDynamicVehicle(411,-2047.7233,144.0272,28.5784,91.2429,33,7); //
    CreateDynamicVehicle(522,-2048.9668,148.0451,28.4028,82.5900,0,7); //
    CreateDynamicVehicle(486,-2096.8960,175.6534,35.2837,5.3058,82,14); //
    //CreateDynamicVehicle(587,-2040.1455,139.2663,28.4017,272.5812,10,10); // doherty
    CreateDynamicVehicle(425,-2030.6925,158.9955,34.6515,260.1658,59,74); //
    CreateDynamicVehicle(447,-2028.7257,126.7816,34.2214,270.1115,112,81); //
/*
	// Flint Country Derby
    CreateDynamicVehicle(495, -1005.859131, -993.139038, 129.778824, 89, -1, -1); // spawnpoint
    CreateDynamicVehicle(495, -1006.293579, -998.165771, 129.778824, 89, -1, -1); // spawnpoint (1)
    CreateDynamicVehicle(495, -1006.505310, -1002.836914, 129.772720, 89, -1, -1); // spawnpoint (2)
    CreateDynamicVehicle(495, -1006.724976, -1007.497070, 129.772675, 89, -1, -1); // spawnpoint (3)
    CreateDynamicVehicle(495, -1006.940491, -1012.602356, 129.772675, 89, -1, -1); // spawnpoint (4)
    CreateDynamicVehicle(495, -1006.934509, -1016.995605, 129.772690, 89, -1, -1); // spawnpoint (5)
    CreateDynamicVehicle(495, -1007.275146, -1021.441956, 129.772675, 89, -1, -1); // spawnpoint (6)
    CreateDynamicVehicle(495, -1005.958740, -988.474426, 129.778824, 89, -1, -1); // spawnpoint (7)
    CreateDynamicVehicle(495, -1006.952942, -1027.025513, 129.772675, 89, -1, -1); // spawnpoint (9)
*/
#if defined UVS
	// Bus
	CreateDynamicVehicle(431,1782.897,-1931.728,14.054,270.0,-1,-1);
	CreateDynamicVehicle(431,1782.889,-1925.848,14.054,270.0,-1,-1);
	CreateDynamicVehicle(431,1782.853,-1920.473,14.054,270.0,-1,-1);
	CreateDynamicVehicle(431,1782.802,-1915.399,14.054,270.0,-1,-1);
	CreateDynamicVehicle(431,1782.779,-1909.655,14.054,270.0,-1,-1);
	CreateDynamicVehicle(431,1782.886,-1903.764,14.054,270.0,-1,-1);
	CreateDynamicVehicle(431,1782.743,-1899.343,14.054,270.0,-1,-1);
	CreateDynamicVehicle(431,1782.793,-1893.528,14.054,270.0,-1,-1);
	CreateDynamicVehicle(431,1783.042,-1887.758,14.054,270.0,-1,-1);
#endif
    // Chilliad
    CreateDynamicVehicle(522,-2331.458,-1671.659,482.943,316.0,-1,-1);
    CreateDynamicVehicle(429,-2333.725,-1669.264,483.122,316.0,-1,-1);
    CreateDynamicVehicle(402,-2336.325,-1667.161,483.291,316.0,-1,-1);
    CreateDynamicVehicle(541,-2338.966,-1665.221,483.452,316.0,-1,-1);
    CreateDynamicVehicle(415,-2340.940,-1662.886,483.556,316.0,-1,-1);
    CreateDynamicVehicle(480,-2343.362,-1660.376,483.556,316.0,-1,-1);
    CreateDynamicVehicle(587,-2345.173,-1656.865,483.556,304.0,-1,-1);
    CreateDynamicVehicle(429,-2346.805,-1654.042,483.556,304.0,-1,-1);
    CreateDynamicVehicle(411,-2349.043,-1650.822,483.556,304.0,-1,-1);
    CreateDynamicVehicle(559,-2350.586,-1647.334,483.556,293.0,-1,-1);
    CreateDynamicVehicle(556,-2351.871,-1643.542,483.556,282.0,-1,-1);
    CreateDynamicVehicle(463,-2353.084,-1639.985,483.556,282.0,-1,-1);
    CreateDynamicVehicle(531,-2355.591,-1636.827,483.556,293.0,-1,-1);
#if defined UVS
	// Chillid Jump
	CreateDynamicVehicle(411,-2812.768,-963.406,914.813,306.0,-1,-1);
	CreateDynamicVehicle(411,-2816.061,-957.725,914.813,306.0,-1,-1);
	CreateDynamicVehicle(411,-2819.745,-952.646,914.813,306.0,-1,-1);
	CreateDynamicVehicle(411,-2823.320,-947.249,914.813,306.0,-1,-1);
	CreateDynamicVehicle(411,-2827.100,-942.220,914.813,306.0,-1,-1);
	CreateDynamicVehicle(411,-2788.281,-946.802,914.813,122.0,-1,-1);
	CreateDynamicVehicle(411,-2792.215,-941.929,914.813,122.0,-1,-1);
	CreateDynamicVehicle(411,-2796.211,-936.838,914.813,122.0,-1,-1);
	CreateDynamicVehicle(411,-2799.361,-931.374,914.813,122.0,-1,-1);
	CreateDynamicVehicle(411,-2802.697,-926.231,914.813,122.0,-1,-1);
#endif
/*
    // Derby 4
    CreateDynamicVehicle(504, 1393.147949, 2155.571045, 10.913438, 89, -1, -1); // spawnpoint
    CreateDynamicVehicle(504, 1392.674561, 2152.036377, 10.913437, 89, -1, -1); // spawnpoint (1)
    CreateDynamicVehicle(504, 1392.734131, 2148.536621, 10.913438, 89, -1, -1); // spawnpoint (2)
    CreateDynamicVehicle(504, 1392.746216, 2145.166504, 10.913438, 89, -1, -1); // spawnpoint (3)
    CreateDynamicVehicle(504, 1392.694458, 2141.611572, 10.913438, 89, -1, -1); // spawnpoint (4)
    CreateDynamicVehicle(504, 1392.651001, 2137.716553, 10.913439, 89, -1, -1); // spawnpoint (5)
    CreateDynamicVehicle(504, 1392.540161, 2133.572754, 10.913438, 89, -1, -1); // spawnpoint (6)
    CreateDynamicVehicle(504, 1392.450562, 2129.861084, 10.913438, 89, -1, -1); // spawnpoint (7)
    CreateDynamicVehicle(504, 1392.161011, 2125.878418, 10.913438, 89, -1, -1); // spawnpoint (8)
    CreateDynamicVehicle(504, 1392.220215, 2122.136963, 10.913438, 89, -1, -1); // spawnpoint (9)
    CreateDynamicVehicle(504, 1392.277222, 2118.709717, 10.913438, 89, -1, -1); // spawnpoint (10)
    CreateDynamicVehicle(504, 1392.651367, 2114.948975, 10.913438, 89, -1, -1); // spawnpoint (11)
    CreateDynamicVehicle(504, 1392.502563, 2111.022461, 10.905625, 89, -1, -1); // spawnpoint (12)
    CreateDynamicVehicle(504, 1392.689331, 2107.967285, 10.905624, 89, -1, -1); // spawnpoint (13)
*/
	//Hideout
	CreateDynamicVehicle(471,-1422.3180,-958.2870,200.4387,288.8148,8,8); // Quad
	CreateDynamicVehicle(522,-1430.6462,-951.4463,200.5453,249.7544,7,79); // NRG500
	CreateDynamicVehicle(568,-1438.6173,-957.9554,200.9465,341.9563,13,6); // Bandito

	// LV Parkolóház
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.354,1405.158,42.674,271.0,-1,-1);
/*
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.475,1429.737,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.192,1433.431,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.397,1436.926,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.386,1440.752,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.927,1444.743,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.474,1447.852,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.221,1451.569,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.450,1455.281,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.353,1458.737,42.674,271.0,-1,-1);
*/
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.408,1408.824,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.442,1412.157,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.550,1415.364,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.830,1426.200,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.138,1419.109,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.914,1422.827,42.674,271.0,-1,-1);
/*
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.813,1476.385,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.688,1462.432,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.992,1466.260,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.965,1469.779,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.146,1472.916,42.674,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.778,1483.758,42.749,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.543,1480.370,42.749,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.001,1487.340,42.744,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.307,1490.614,42.744,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2303.810,1494.170,42.744,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2304.192,1497.779,42.744,271.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.920,1501.182,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2352.126,1497.682,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2352.006,1487.323,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.742,1483.815,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2352.337,1480.349,42.350,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.349,1472.738,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.399,1469.358,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.822,1465.913,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.850,1494.165,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.709,1490.857,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.712,1458.595,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2350.902,1447.946,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.302,1451.573,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.091,1454.845,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2352.011,1477.081,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.808,1462.509,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2350.989,1444.073,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.415,1430.246,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.752,1437.320,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.526,1433.700,42.744,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.675,1426.843,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.494,1440.843,42.744,89.0,-1,-1);
*/
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.563,1423.239,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.589,1419.936,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.998,1416.264,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2352.143,1412.491,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.016,1405.625,42.749,89.0,-1,-1);
    CreateDynamicVehicle(FastCars[random(sizeof(FastCars))],2351.123,1408.789,42.749,89.0,-1,-1);

	// NRG Parkour
	CreateDynamicVehicle(522,2710.673,-1437.860,54.541,0.0,-1,-1);
    CreateDynamicVehicle(522,2708.724,-1437.935,54.541,0.0,-1,-1);
    CreateDynamicVehicle(522,2706.975,-1437.863,54.541,0.0,-1,-1);
    CreateDynamicVehicle(522,2705.110,-1437.886,54.541,0.0,-1,-1);
    CreateDynamicVehicle(522,2703.396,-1437.876,54.541,0.0,-1,-1);
    CreateDynamicVehicle(522,2701.723,-1437.885,54.541,0.0,-1,-1);
    CreateDynamicVehicle(522,2700.067,-1438.000,54.541,0.0,-1,-1);

    // LV Airport
    CreateDynamicVehicle(411,1282.4857,1287.7535,10.5474,270.6835,116,1);
    CreateDynamicVehicle(451,1282.6177,1291.0171,10.5263,271.3673,18,18);
    CreateDynamicVehicle(506,1282.4412,1294.1874,10.5248,272.1931,76,76);
    CreateDynamicVehicle(541,1282.2651,1297.3617,10.4451,270.2855,22,1);
    CreateDynamicVehicle(429,1282.5900,1300.5900,10.5000,268.7039,2,1);
    CreateDynamicVehicle(415,1282.5728,1303.7535,10.5907,268.5242,36,1);
    CreateDynamicVehicle(560,1282.3845,1307.1417,10.5254,269.8665,33,0);
    CreateDynamicVehicle(558,1282.4169,1310.0132,10.4508,269.9718,30,1);
    CreateDynamicVehicle(522,1306.1901,1278.5698,10.3893,357.9945,51,118);
    CreateDynamicVehicle(522,1307.3536,1278.5397,10.3891,0.4644,3,3);
    CreateDynamicVehicle(522,1308.3938,1278.6669,10.3860,3.2794,3,8);
    CreateDynamicVehicle(522,1309.3291,1278.6283,10.3903,4.8400,6,25);
    CreateDynamicVehicle(468,1311.7159,1278.4934,10.4894,358.8913,6,6);
    CreateDynamicVehicle(468,1312.6373,1278.5002,10.4895,359.2117,46,46);
    CreateDynamicVehicle(468,1313.6716,1278.4943,10.4896,2.3381,53,53);
    CreateDynamicVehicle(468,1314.7209,1278.3402,10.4895,359.6273,3,3);
    CreateDynamicVehicle(463,1317.3595,1278.5671,10.3793,2.0939,22,22);
    CreateDynamicVehicle(463,1318.4323,1278.5208,10.3608,3.5792,36,36);
    CreateDynamicVehicle(463,1319.3960,1278.5782,10.3604,1.3253,53,53);
    CreateDynamicVehicle(463,1320.2380,1278.5327,10.3607,4.9077,79,79);
    CreateDynamicVehicle(462,1316.0950,1278.4041,10.4190,358.8765,1,3);
    CreateDynamicVehicle(462,1310.3292,1278.6273,10.4198,1.3178,3,1);
    CreateDynamicVehicle(461,1322.9408,1278.2468,10.4063,358.3414,37,1);
    CreateDynamicVehicle(581,1324.2446,1278.2900,10.4156,359.7528,58,1);
    CreateDynamicVehicle(586,1325.4893,1278.3412,10.3405,0.3606,122,1);
    CreateDynamicVehicle(481,1326.8779,1278.2421,10.3352,1.4202,3,3);
    CreateDynamicVehicle(509,1327.5697,1278.3219,10.3327,359.3014,74,1);
    CreateDynamicVehicle(510,1328.4369,1278.2919,10.4283,1.9130,46,46);
    CreateDynamicVehicle(521,1321.6880,1278.2441,10.3869,1.3392,75,13);
    CreateDynamicVehicle(523,1329.5287,1278.2889,10.3906,358.2949,0,0);
/*
    // LS Airport
    CreateDynamicVehicle(411,1552.2391,-2417.9124,13.2818,183.0289,112,1);
    CreateDynamicVehicle(451,1555.3441,-2417.9224,13.2616,182.6369,46,46);
    CreateDynamicVehicle(541,1558.6022,-2418.0872,13.1796,180.0323,36,8);
    CreateDynamicVehicle(506,1561.7035,-2418.4519,13.2593,178.1100,3,3);
    CreateDynamicVehicle(429,1564.7015,-2418.2878,13.2344,175.1484,1,3);
    CreateDynamicVehicle(560,1567.7925,-2418.4265,13.2599,173.5650,37,0);
    CreateDynamicVehicle(558,1571.0326,-2418.9573,13.1857,171.7484,35,1);
    CreateDynamicVehicle(494,1574.1492,-2419.2881,13.4499,170.2022,36,13);
    CreateDynamicVehicle(559,1577.5826,-2419.0947,13.2110,175.9318,13,8);
    CreateDynamicVehicle(602,1581.1182,-2419.4060,13.3605,178.7779,34,1);
    CreateDynamicVehicle(522,1541.0000,-2426.4309,13.1269,221.0133,7,79);
    CreateDynamicVehicle(522,1540.0620,-2427.1821,13.1173,220.2509,8,82);
    CreateDynamicVehicle(522,1539.2465,-2427.8655,13.1262,217.8979,36,105);
    CreateDynamicVehicle(522,1538.3607,-2428.5964,13.1249,218.2403,39,106);
    CreateDynamicVehicle(468,1537.2537,-2429.2888,13.2238,217.5212,6,6);
    CreateDynamicVehicle(468,1536.5585,-2430.0061,13.2237,221.4544,46,46);
    CreateDynamicVehicle(468,1535.7795,-2430.5671,13.2237,217.8681,53,53);
    CreateDynamicVehicle(463,1534.4268,-2431.7046,13.0949,217.1976,84,84);
    CreateDynamicVehicle(463,1533.5432,-2432.2703,13.0951,218.2621,7,7);
    CreateDynamicVehicle(463,1532.6372,-2433.0686,13.0951,218.2067,11,11);
    CreateDynamicVehicle(461,1530.4714,-2433.4248,13.1397,192.5081,53,1);
    CreateDynamicVehicle(581,1529.4304,-2433.4729,13.1516,193.0390,66,1);
    CreateDynamicVehicle(521,1528.1770,-2433.5210,13.1251,188.7627,92,3);
    CreateDynamicVehicle(586,1527.0186,-2433.8328,13.0746,192.8130,8,1);
    CreateDynamicVehicle(523,1526.0303,-2433.8984,13.1252,191.6074,0,0);
*/
	//Derby
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1355.5416,936.6710,1036.1837,11.4329,1,1), 15);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1350.6061,937.5493,1036.1947,12.4710,1,1), 15);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1345.6512,938.5836,1036.2046,13.2675,1,1), 15);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1340.6078,939.9857,1036.2150,17.2391,1,1), 15);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1336.7312,941.1116,1036.2316,17.4418,1,1), 15);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1331.5814,942.9241,1036.2539,20.6521,1,1), 15);

	// Derby mellett verseny
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(451,-1431.4374,921.1543,1038.4773,83.7650,50,84), 15);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(411,-1436.3590,911.0132,1040.3196,79.9157,10,7), 15);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(494,-1415.3112,909.4926,1040.6279,86.8650,66,18), 15);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(415,-1410.8060,917.9175,1039.0768,88.6305,87,118), 15);

	//Dirt
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(568,-1293.6066,-699.9584,1056.1979,32.9697,13,6), 4);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(568,-1290.6547,-705.1854,1055.9683,25.9573,13,6), 4);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(568,-1288.5525,-710.9236,1055.3217,13.2351,13,6), 4);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(568,-1288.0195,-716.4835,1054.2349,1.8518,13,6), 4);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(568,-1288.5397,-722.2761,1052.8531,350.2811,13,6), 4);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(568,-1290.4360,-727.0573,1051.5167,336.0467,13,6), 4);
/*
	new
	    RCVehicle[29];
	//RC War
	RCVehicle[0] = CreateDynamicVehicle(464,-1133.0215,1030.2168,1345.0315,271.6719,14,75); // Baron
	RCVehicle[1] = CreateDynamicVehicle(464,-1133.2302,1027.8629,1345.0304,270.6061,14,75); // Baron
	RCVehicle[2] = CreateDynamicVehicle(464,-1130.5699,1027.8213,1345.0131,272.9121,14,75); // Baron
	RCVehicle[3] = CreateDynamicVehicle(464,-1130.4882,1030.2493,1345.0162,269.2135,14,75); // Baron
	RCVehicle[4] = CreateDynamicVehicle(464,-1128.1396,1027.9340,1345.0026,270.3515,14,75); // Baron
	RCVehicle[5] = CreateDynamicVehicle(464,-1128.1316,1030.2913,1345.0017,269.7841,14,75); // Baron
	RCVehicle[6] = CreateDynamicVehicle(464,-1125.8781,1030.2914,1344.9885,270.9232,14,75); // Baron
	RCVehicle[7] = CreateDynamicVehicle(464,-1125.8718,1027.9491,1344.9882,267.8098,14,75);// Baron
	RCVehicle[8] = CreateDynamicVehicle(501,-1133.1169,1042.7013,1345.2675,273.8671,14,75); // Goblin
	RCVehicle[9] = CreateDynamicVehicle(501,-1133.0339,1040.7697,1345.2501,272.7063,14,75); // Goblin
	RCVehicle[10] = CreateDynamicVehicle(501,-1130.0284,1040.6913,1345.2063,271.9564,14,75); // Goblin
	RCVehicle[11] = CreateDynamicVehicle(501,-1129.9369,1042.6572,1345.2371,274.4154,14,75); // Goblin
	RCVehicle[12] = CreateDynamicVehicle(564,-1132.1053,1057.8380,1345.5826,269.6947,0,0); // Tiger
	RCVehicle[13] = CreateDynamicVehicle(564,-1129.5297,1057.8292,1345.5835,269.8691,0,0); // Tiger
	RCVehicle[14] = CreateDynamicVehicle(441,-1134.7843,1038.3818,1344.8730,226.6530,79,42); // Bandit
	RCVehicle[15] = CreateDynamicVehicle(441,-1128.2644,1038.5522,1344.8311,224.6958,79,42);// Bandit
	RCVehicle[16] = CreateDynamicVehicle(594,-1125.7714,1053.2950,1344.8958,165.9683,0,0); // RC Cam
	RCVehicle[17] = CreateDynamicVehicle(594,-1125.9305,1052.1727,1344.8954,169.6070,0,0); // RC Cam
	RCVehicle[18] = CreateDynamicVehicle(594,-1131.6476,1054.9731,1344.9418,198.3954,0,0); // RC Cam
	RCVehicle[19] = CreateDynamicVehicle(564,-1136.3162,1019.0483,1358.0835,270.5313,0,0); // Tiger (watch rcwar)
	RCVehicle[20] = CreateDynamicVehicle(564,-1130.9722,1019.0976,1358.0835,270.5307,0,0); // Tiger (watch rcwar)
	RCVehicle[21] = CreateDynamicVehicle(564,-1126.4869,1019.1389,1358.0835,270.5305,0,0); // Tiger (watch rcwar)
	RCVehicle[22] = CreateDynamicVehicle(564,-1122.3527,1019.1770,1358.0835,270.5303,0,0); // Tiger (watch rcwar)
	RCVehicle[23] = CreateDynamicVehicle(564,-1117.7897,1019.2189,1358.0835,270.5296,0,0); // Tiger (watch rcwar)
	RCVehicle[24] = CreateDynamicVehicle(501,-974.5468,1077.4277,1344.4403,86.6298,14,75); // rc
	RCVehicle[25] = CreateDynamicVehicle(501,-974.2400,1079.0500,1344.4426,82.6144,14,75); // rc
	RCVehicle[26] = CreateDynamicVehicle(464,-974.1407,1091.1390,1344.2731,95.8374,14,75); //
	RCVehicle[27] = CreateDynamicVehicle(464,-976.9093,1090.8556,1344.2549,95.8333,14,75); //
	RCVehicle[28] = CreateDynamicVehicle(464,-980.3203,1090.5066,1344.2474,95.8577,14,75); //

	for(new i; i < sizeof(RCVehicle); i++)
	{
		LinkDynamicVehicleToInterior(RCVehicle[i], 10);
		SetDynamicVehicleVirtualWorld(RCVehicle[i], DM_ZONE_RCWAR);
	}
	*/
	//Stadium
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(522,-1496.0048,1625.4183,1052.0997,268.6247,13,6), 14);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(522,-1495.7233,1622.6516,1052.1017,267.5627,13,6), 14);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(522,-1495.4155,1619.7268,1052.1012,270.7532,13,6), 14);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(522,-1495.6400,1616.9315,1052.0990,268.9297,13,6), 14);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(522,-1495.6876,1614.1799,1052.1058,269.9096,13,6), 14);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(522,-1495.4916,1611.3296,1052.1057,271.6064,13,6), 14);

	// 8-Track
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(494,-1409.1571,-265.3991,1043.4292,345.2763,95,11), 7);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(494,-1404.1877,-267.3275,1043.4281,350.3088,95,11), 7);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(494,-1402.2415,-255.9119,1043.4019,350.9496,95,11), 7);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(494,-1406.5645,-254.3592,1043.3993,346.1099,95,11), 7);

	// Sumo
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1362.2659,1235.4268,1039.6448,63.6525,51,36), 16);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1427.3253,1263.7119,1039.6505,245.3911,51,36), 16);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1378.3243,1277.2189,1039.6505,140.9174,51,36), 16);
    LinkDynamicVehicleToInterior(CreateDynamicVehicle(504,-1415.3492,1217.4424,1039.6538,328.6680,51,36), 16);

	// Liberty City Cars
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(471,-805.8347,499.3855,1360.0096,85.8165,84,54), 1);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(411,-783.5401,488.3871,1381.3257,273.0176,94,104), 1);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(506,-784.0378,492.9672,1381.4772,274.2419,42,0), 1);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(559,-784.1791,497.5621,1381.2640,270.0006,22,22), 1);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(558,-784.0159,502.3227,1381.2303,269.2645,41,62), 1);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(420,-732.0176,485.3135,1371.7572,148.8370,10,0), 1);
	LinkDynamicVehicleToInterior(CreateDynamicVehicle(420,-786.4692,454.4571,1362.4026,93.9065,10,0), 1);

	// LV Stunt Zone
	//CreateDynamicVehicle(451,2174.6506,1695.1582,10.5226,85.4943,16,16); // LV
    CreateDynamicVehicle(506,2174.7136,1691.8126,10.5242,87.4196,3,3); // LV
    CreateDynamicVehicle(429,2174.8042,1688.1564,10.5000,88.0410,12,12); // LV
    CreateDynamicVehicle(602,2174.2834,1684.0823,10.6273,88.2181,18,1); // LV
    CreateDynamicVehicle(541,2174.6191,1679.9321,10.4452,88.7460,2,1); // LV
    CreateDynamicVehicle(451,2174.3271,1675.9677,10.5271,87.8399,46,46); // LV
    CreateDynamicVehicle(560,2174.6133,1671.9552,10.5255,87.9159,9,39); // LV
    CreateDynamicVehicle(559,2174.4580,1668.3060,10.4767,85.2797,58,8); // LV
    //CreateDynamicVehicle(401,2174.6072,1664.0642,10.5999,90.6569,87,96); // LV
    CreateDynamicVehicle(422,2159.8770,1643.8450,11.0956,23.1272,48,41); // LV
    CreateDynamicVehicle(400,2163.5100,1645.8257,11.1951,26.4794,125,78); // LV
    CreateDynamicVehicle(522,2149.0630,1672.9089,10.3643,66.4459,36,105); // LV
    CreateDynamicVehicle(523,2149.7358,1674.8809,10.3890,76.6197,0,0); // LV
    CreateDynamicVehicle(463,2150.3391,1676.7124,10.3592,80.9276,11,11); // LV
    CreateDynamicVehicle(522,2150.5730,1678.8665,10.3767,86.0818,7,79); // LV
    CreateDynamicVehicle(522,2150.9063,1680.9263,10.3740,89.9648,8,82); // LV
    CreateDynamicVehicle(463,2150.4680,1682.6410,10.3563,92.7230,7,7); // LV
    CreateDynamicVehicle(468,2150.3167,1684.5035,10.4883,94.7173,6,6); // LV
    CreateDynamicVehicle(522,2150.0076,1686.2435,10.3984,100.7984,39,106); // LV

	// Fegyverbolt
    CreateDynamicVehicle(560,2162.8210,1012.3949,10.4610,85.5142,9,39); //
    CreateDynamicVehicle(411,2162.5959,1019.1662,10.5673,268.5522,123,1); //
    CreateDynamicVehicle(426,2172.8728,1016.2715,10.5695,268.3514,42,42); //
    CreateDynamicVehicle(438,2157.7993,987.5057,10.8218,0.4461,6,76); //
    CreateDynamicVehicle(534,2141.7190,1009.7650,10.5707,270.6242,53,53); //
    CreateDynamicVehicle(562,2141.8530,1022.4905,10.4765,271.4868,116,1); //
    CreateDynamicVehicle(562,2141.8711,1025.8306,10.4324,271.0521,3,3); //

    // Rendõrség SF
    CreateDynamicVehicle(523,-1612.6051,673.4282,6.6768,0.8998,0,0,60,1); //
    CreateDynamicVehicle(427,-1600.3083,673.5729,7.3462,0.6052,0,1,60,1); //
    CreateDynamicVehicle(427,-1606.0157,671.9872,7.3196,2.6115,0,1,60,1); //
    CreateDynamicVehicle(598,-1594.8290,672.7319,6.9637,1.9341,0,1,60,1); //
    CreateDynamicVehicle(598,-1593.5085,651.6835,6.9634,359.7181,0,1,60,1); //
    CreateDynamicVehicle(427,-1599.8126,652.0289,7.3475,177.9937,0,1,60,1); //
    CreateDynamicVehicle(598,-1610.2029,652.5700,6.9637,174.7869,0,1,60,1); //
	CreateDynamicVehicle(497,-1679.4246,706.1555,30.7790,89.9821,9,22,60,1); //

	// Rendõrség LS
    CreateDynamicVehicle(598,1555.5621,-1608.1584,13.1559,4.5137,0,1,60,1); //
    CreateDynamicVehicle(523,1560.6409,-1607.5619,12.8724,358.1959,0,0,60,1); //
    CreateDynamicVehicle(598,1566.7800,-1606.0784,13.1249,353.4787,0,1,60,1); //
    CreateDynamicVehicle(427,1577.5782,-1606.6376,13.5470,354.7215,0,1,60,1); //
    CreateDynamicVehicle(598,1590.9282,-1605.8499,13.1559,173.8977,0,1,60,1); //
    CreateDynamicVehicle(427,1603.4390,-1616.2755,13.6554,266.5814,0,1,60,1); //
    CreateDynamicVehicle(523,1601.3907,-1687.8124,5.4308,79.1901,0,0,60,1); //
    CreateDynamicVehicle(427,1595.8585,-1711.0685,6.0481,177.1215,0,1,60,1); //
    CreateDynamicVehicle(598,1574.7351,-1709.9183,5.6635,359.3225,0,1,60,1); //
    CreateDynamicVehicle(427,1529.7887,-1688.5815,6.0509,89.3563,0,1,60,1); //
    CreateDynamicVehicle(427,1528.5625,-1683.8927,6.0225,88.6078,0,1,60,1); //
    CreateDynamicVehicle(598,1526.9954,-1644.7838,5.6637,180.9227,0,1,60,1); //
    CreateDynamicVehicle(497,1565.948,-1699.273,28.661,89.0,-1,-1,60,1);
    CreateDynamicVehicle(497,1566.330,-1652.080,28.661,89.0,-1,-1,60,1);

	// Rendõrség LV
    CreateDynamicVehicle(598,2256.0920,2458.4563,10.5915,0.7916,0,1,60,1); //
    CreateDynamicVehicle(598,2260.8240,2458.1572,10.5666,0.8662,0,1,60,1); //
    CreateDynamicVehicle(427,2272.5530,2459.7422,10.9751,178.9769,0,1,60,1); //
    CreateDynamicVehicle(427,2256.3347,2442.2107,10.8889,180.0513,0,1,60,1); //
    CreateDynamicVehicle(427,2252.0762,2442.2559,10.9522,183.4138,0,1,60,1); //
    CreateDynamicVehicle(598,2268.9294,2443.1409,10.5989,181.5374,0,1,60,1); //
    CreateDynamicVehicle(523,2290.7212,2441.2109,10.3119,16.5280,0,0,60,1); //
    CreateDynamicVehicle(523,2294.7869,2441.1431,10.3123,15.5494,0,0,60,1); //
    CreateDynamicVehicle(598,2277.6846,2477.0933,10.5957,180.1085,0,1,60,1); //
    CreateDynamicVehicle(523,2269.4443,2476.9370,10.3158,357.8713,0,0,60,1); //
    CreateDynamicVehicle(427,2256.1311,2477.9951,10.9742,0.7428,0,1,60,1); //
    CreateDynamicVehicle(598,2251.6921,2477.0093,10.5957,179.5245,0,1,60,1); //
/*
	// Lift Cars
    CreateDynamicVehicle(452,-1455.3914,623.8802,-0.4758,264.9207,17,0); //
    CreateDynamicVehicle(446,-1458.2156,653.6451,-0.5484,271.5129,23,46); //
    CreateDynamicVehicle(539,-1465.8857,670.3240,0.4032,294.3585,99,75); //
    CreateDynamicVehicle(454,-1464.0613,702.6940,0.1424,276.0133,76,56); //
    CreateDynamicVehicle(522,-1485.1527,712.3934,6.7498,91.8248,117,106); //
    CreateDynamicVehicle(461,-1485.5535,709.0147,6.7678,89.2388,123,95); //
    CreateDynamicVehicle(521,-1485.7192,705.9890,6.7487,92.5316,17,50); //
    CreateDynamicVehicle(451,-1486.6147,721.6567,6.8856,87.7656,105,45); //
    CreateDynamicVehicle(411,-1486.5868,724.8848,6.9217,91.7749,10,7); //
    CreateDynamicVehicle(415,-1494.9808,714.7629,7.0003,9.1239,10,10); //
    CreateDynamicVehicle(522,448.6848,288.3296,3.2256,65.9124,10,7); //
    CreateDynamicVehicle(411,457.0936,299.1257,3.9741,46.6938,10,7); //
    CreateDynamicVehicle(539,445.8734,306.1025,0.4035,73.1596,80,52); //
*/
#if defined UVS
	// Half Pipe
    CreateDynamicVehicle(411, 1281.894165, 4236.124023 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (23)
    CreateDynamicVehicle(522, 1282.355347, 4245.592773 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (24)
    CreateDynamicVehicle(541, 1282.938232, 4254.182617 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (25)
    CreateDynamicVehicle(415, 1283.188843, 4263.460449 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (26)
    CreateDynamicVehicle(480, 1283.115967, 4272.227539 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (27)
    CreateDynamicVehicle(587, 1283.345459, 4280.896484 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (28)
    CreateDynamicVehicle(422, 1283.622070, 4290.858398 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (29)
    CreateDynamicVehicle(535, 1284.156982, 4299.460449 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (30)
    CreateDynamicVehicle(404, 1284.606445, 4308.103516 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (31)
    CreateDynamicVehicle(560, 1284.796509, 4316.716309 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (32)
    CreateDynamicVehicle(601, 1282.585693, 4327.360840 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (33)
    CreateDynamicVehicle(556, 1283.540894, 4335.460449 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (34)
    CreateDynamicVehicle(471, 1283.482910, 4343.699707 + 500.0, 118.512383, 271, -1, -1); // spawnpoint (35)
#endif
/*
	// Half Pipe 2
    CreateDynamicVehicle(429,2881.205,-1956.756,7.641,271.0,-1,-1);
    CreateDynamicVehicle(422,2881.139,-1959.658,7.541,271.0,-1,-1);
    CreateDynamicVehicle(587,2881.135,-1962.801,7.329,271.0,-1,-1);
    CreateDynamicVehicle(560,2881.170,-1965.762,7.884,271.0,-1,-1);
	CreateDynamicVehicle(558,2882.0520,-1968.9661,6.2824,269.6534,79,110);
*/
	// Terep
    CreateDynamicVehicle(490,-1909.6599,-2454.2952,30.9723,6.0267,6,0); // offroad 1 cars
    CreateDynamicVehicle(490,-1914.0406,-2455.7673,30.9521,35.5951,17,0); // offroad 1 cars
    CreateDynamicVehicle(495,-1922.9595,-2457.5879,31.1025,350.1976,8,9); // offroad 1 cars
    CreateDynamicVehicle(495,-1918.4552,-2456.9917,31.0728,7.3996,85,114); // offroad 1 cars
    CreateDynamicVehicle(422,-1927.1813,-2456.3472,30.7522,323.9145,77,55); // offroad 1 cars
    CreateDynamicVehicle(422,-1929.7323,-2453.3989,30.6776,320.3108,117,85); // offroad 1 cars
    CreateDynamicVehicle(579,-1931.7109,-2450.6748,30.6397,309.1775,44,102); // offroad 1 cars
    CreateDynamicVehicle(579,-1933.3062,-2446.9563,30.6356,293.6549,12,12); // offroad 1 cars
    CreateDynamicVehicle(489,-1934.2072,-2442.6101,30.7661,265.2482,86,50); // offroad 1 cars
    CreateDynamicVehicle(489,-1934.0400,-2438.1443,30.7690,270.1136,96,25); // offroad 1 cars
    CreateDynamicVehicle(400,-1933.8351,-2434.4771,30.5961,268.6852,123,8); // offroad 1 cars
    CreateDynamicVehicle(400,-1933.4426,-2430.8093,30.6022,265.2690,7,80); // offroad 1 cars
#if defined UVS
	// Dokkok
    CreateDynamicVehicle(471,-1703.6707,65.7835,3.2195,219.7833,-1,-1); // dock
    CreateDynamicVehicle(471,-1701.9446,67.2981,3.2051,221.1541,-1,-1); // dock
    CreateDynamicVehicle(539,-1711.5798,54.7782,2.9665,318.2059,-1,-1); // dock
    CreateDynamicVehicle(539,-1716.8458,53.8921,2.9652,226.9028,-1,-1); // dock
    CreateDynamicVehicle(539,-1711.4678,62.2277,2.9665,223.9436,-1,-1); // dock
    CreateDynamicVehicle(573,-1687.8367,21.6371,4.2630,359.0327,-1,-1); // dock
    CreateDynamicVehicle(494,-1673.0929,38.6441,3.3775,93.1572,-1,-1); // dock
    CreateDynamicVehicle(494,-1670.6040,41.1833,3.3800,91.5193,-1,-1); // dock
    CreateDynamicVehicle(494,-1668.2981,44.1001,3.3698,94.1814,-1,-1); // dock

	// Heavy
    CreateDynamicVehicle(514,-1785.9984,-1605.2451,22.3470,317.0512,2,6); //
    CreateDynamicVehicle(514,-1784.7241,-1610.1967,22.3829,317.0831,125,5); //
    CreateDynamicVehicle(403,-1765.6891,-1598.2010,22.3730,76.5894,1,0); //
    CreateDynamicVehicle(403,-1759.2068,-1603.7833,22.3364,76.6064,-1,-1); //
    CreateDynamicVehicle(403,-1754.4866,-1608.5892,22.3936,79.1396,1,0); //
    CreateDynamicVehicle(403,-1749.4854,-1614.1332,22.3751,76.5410,-1,-1); //
    CreateDynamicVehicle(443,-1747.5399,-1620.4922,22.4511,76.8290,1,0); //
    CreateDynamicVehicle(443,-1745.0392,-1626.3019,22.4544,77.3442,-1,-1); //
    CreateDynamicVehicle(514,-1739.4816,-1632.3040,22.3338,81.7271,-1,-1); //
    CreateDynamicVehicle(514,-1737.5067,-1636.8064,22.3390,79.7103,-1,-1); //
    CreateDynamicVehicle(515,-1736.1154,-1643.6962,23.4206,77.5861,-1,-1); //
    CreateDynamicVehicle(515,-1735.1384,-1648.8639,23.4546,74.1199,1,0); //
    CreateDynamicVehicle(515,-1749.6047,-1654.0616,23.5162,17.2633,-1,-1); //
    CreateDynamicVehicle(515,-1756.7601,-1656.2687,23.5367,17.1888,1,0); //
    CreateDynamicVehicle(515,-1762.4569,-1659.1833,23.6055,21.4425,-1,-1); //
    CreateDynamicVehicle(455,-1811.1592,-1609.8710,23.5021,151.7845,-1,-1); //
    CreateDynamicVehicle(455,-1824.1633,-1610.7278,23.4997,209.0164,-1,-1); //
    CreateDynamicVehicle(406,-1815.3682,-1657.4747,23.5592,2.6576,-1,-1); //
    CreateDynamicVehicle(406,-1824.5969,-1663.2926,23.3362,359.4843,-1,-1); //
    CreateDynamicVehicle(406,-1835.8496,-1667.5382,23.3049,359.6483,-1,-1); //
    CreateDynamicVehicle(455,-1861.1626,-1614.9088,22.2839,205.2413,-1,-1); //
    CreateDynamicVehicle(455,-1851.0165,-1613.5558,22.2572,145.9118,1,0); //
    CreateDynamicVehicle(455,-1910.6486,-1664.5200,23.4312,230.7070,-1,-1); //
    CreateDynamicVehicle(455,-1909.0410,-1678.3556,23.4987,293.6775,-1,-1); //
    CreateDynamicVehicle(486,-1890.5322,-1692.7828,21.9715,271.3498,-1,-1); //
    CreateDynamicVehicle(486,-1902.5720,-1693.0869,21.9868,271.5750,-1,-1); //
    CreateDynamicVehicle(486,-1913.0428,-1693.3575,21.9855,271.4223,-1,-1); //
    CreateDynamicVehicle(486,-1920.2432,-1693.5405,21.9854,271.4825,-1,-1); //
    CreateDynamicVehicle(498,-1935.8700,-1686.0897,21.8578,312.2641,-1,-1); //
    CreateDynamicVehicle(498,-1936.4302,-1681.6765,21.8477,312.3024,-1,-1); //
    CreateDynamicVehicle(498,-1936.3276,-1675.5826,21.8103,312.2640,-1,-1); //
    CreateDynamicVehicle(498,-1937.0184,-1666.5426,21.8262,312.2640,-1,-1); //
    CreateDynamicVehicle(498,-1936.7854,-1657.9170,21.8799,312.2640,1,0); //
    CreateDynamicVehicle(498,-1936.4015,-1651.6204,21.8331,312.2531,-1,-1); //
#endif
/*
	// Háború / Harbour
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(473,-2255.0530,2403.0671,-0.1995,40.6040,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(493,-2263.1255,2424.3765,-0.0074,226.2785,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(446,-2254.3330,2429.9214,-0.4165,227.7691,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(452,-2242.4023,2444.3960,-0.3835,229.7718,1,0), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(430,-2235.6780,2451.0027,-0.1614,228.2006,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(430,-2201.9001,2417.3022,-0.1672,47.5461,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(452,-2208.3096,2409.7380,-0.3843,41.5448,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(446,-2221.7480,2396.9470,-0.4182,42.8472,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(493,-2228.7529,2389.3015,-0.0060,43.6741,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(595,-2223.6123,2512.8411,0.2634,188.2821,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(595,-2209.4092,2506.7075,0.2648,188.4678,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(595,-2196.3816,2513.2139,0.2662,188.0545,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(454,-2166.6433,2513.8430,0.2614,131.1719,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(454,-2161.8435,2508.2402,0.2615,131.1715,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(453,-2155.7856,2501.5144,-0.2306,130.4126,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(453,-2151.2500,2496.2031,-0.2345,130.4031,-1,-1), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(484,-2146.0881,2490.5115,0.3086,131.8356,1,0), DM_ZONE_HARBOUR);
    SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(484,-2141.0049,2480.2747,0.3099,135.5960,1,0), DM_ZONE_HARBOUR)
    */
#if defined UVS
	// Chilliad Race
    CreateDynamicVehicle(471,-2404.2275,-1912.1157,306.0987,152.9993,-1,-1); // drace
    CreateDynamicVehicle(471,-2406.1777,-1911.7463,306.0154,157.6698,-1,-1); //
    CreateDynamicVehicle(471,-2399.8445,-1912.7638,306.0670,148.9419,-1,-1); //
    CreateDynamicVehicle(468,-2412.7122,-1909.1628,305.7311,226.4529,-1,-1); //
    CreateDynamicVehicle(468,-2414.6565,-1911.2461,305.5833,206.7870,-1,-1); //
    CreateDynamicVehicle(468,-2415.8098,-1912.3944,305.4870,199.7601,-1,-1); //
    CreateDynamicVehicle(468,-2417.0925,-1913.3401,305.4091,183.4381,-1,-1); //
    CreateDynamicVehicle(468,-2418.6865,-1914.2782,305.3062,199.4663,-1,-1); //
    CreateDynamicVehicle(471,2347.9075,-647.1661,127.7017,89.9820,0,2); // leatherface
    CreateDynamicVehicle(471,2347.9197,-654.8118,127.7047,87.0156,0,2); // leatherface
    CreateDynamicVehicle(510,-2419.7395,-1915.2849,305.2229,207.8592,96,109); //
    CreateDynamicVehicle(510,-2421.4934,-1916.2399,305.1122,203.6363,96,109); //
    CreateDynamicVehicle(471,-2409.7136,-1910.2863,305.7156,158.7814,74,83); //
#endif
	// Drift 4
	CreateDynamicVehicle(411, -1076.557, -1318.202, 129.019, 182.0, -1, -1);
	CreateDynamicVehicle(451, -1073.341, -1318.037, 129.019, 182.0, -1, -1);
	CreateDynamicVehicle(562, -1069.857, -1317.955, 129.019, 182.0, -1, -1);
	CreateDynamicVehicle(535, -1066.498, -1318.114, 129.019, 182.0, -1, -1);
	CreateDynamicVehicle(565, -1079.766, -1318.340, 129.029, 182.0, -1, -1);
	CreateDynamicVehicle(567, -1083.288, -1319.376, 129.029, 182.0, -1, -1);

	// RC1
	CreateDynamicVehicle(411, 1539.006, -1347.361, 329.269, 270.0, -1, -1);
	CreateDynamicVehicle(411, 1538.914, -1350.502, 329.269, 270.0, -1, -1);
	CreateDynamicVehicle(411, 1538.941, -1354.064, 329.269, 270.0, -1, -1);
	CreateDynamicVehicle(411, 1538.937, -1358.171, 329.269, 270.0, -1, -1);
	CreateDynamicVehicle(411, 1550.310, -1358.481, 329.269, 88.0, -1, -1);
	CreateDynamicVehicle(411, 1550.332, -1353.917, 329.269, 88.0, -1, -1);
	CreateDynamicVehicle(411, 1550.270, -1350.545, 329.269, 88.0, -1, -1);
	CreateDynamicVehicle(411, 1550.237, -1347.236, 329.269, 88.0, -1, -1);
	CreateDynamicVehicle(522,1552.327,-1365.405,329.206,0.0,-1,-1);
	CreateDynamicVehicle(522,1553.705,-1365.331,329.206,0.0,-1,-1);
	CreateDynamicVehicle(522,1555.289,-1365.381,329.206,0.0,-1,-1);
	CreateDynamicVehicle(522,1557.164,-1365.375,329.206,0.0,-1,-1);

	// RC2
	CreateDynamicVehicle(411, -2692.998, 1940.414, 218.378, 178.0, -1, -1);
	CreateDynamicVehicle(411, -2685.823, 1940.374, 218.378, 178.0, -1, -1);
	CreateDynamicVehicle(411, -2680.210, 1940.130, 218.378, 178.0, -1, -1);
	CreateDynamicVehicle(411, -2675.324, 1939.953, 218.378, 178.0, -1, -1);
	CreateDynamicVehicle(411, -2670.908, 1939.979, 218.378, 178.0, -1, -1);

	// RC3
	CreateDynamicVehicle(411, -1826.432, 577.786, 235.441, 179.0, -1, -1);
	CreateDynamicVehicle(411, -1822.440, 577.897, 235.441, 179.0, -1, -1);
	CreateDynamicVehicle(411, -1818.986, 577.635, 235.441, 179.0, -1, -1);
	CreateDynamicVehicle(411, -1815.323, 577.843, 235.441, 179.0, -1, -1);
	CreateDynamicVehicle(411, -1811.554, 577.546, 235.441, 179.0, -1, -1);
	CreateDynamicVehicle(411, -1808.084, 577.434, 235.441, 179.0, -1, -1);

	// RC4
	CreateDynamicVehicle(411, -2876.437, 2624.738, 276.938, 270.0, -1, -1);
	CreateDynamicVehicle(411, -2876.429, 2620.957, 276.938, 270.0, -1, -1);
	CreateDynamicVehicle(411, -2876.370, 2617.446, 276.938, 270.0, -1, -1);
	CreateDynamicVehicle(411, -2876.381, 2614.141, 276.938, 270.0, -1, -1);
	CreateDynamicVehicle(411, -2876.500, 2610.429, 276.938, 270.0, -1, -1);
/*
	// HQ
    CreateDynamicVehicle(522,595.237,866.058,-43.613,271.0,-1,-1);
    CreateDynamicVehicle(522,595.236,867.126,-43.618,271.0,-1,-1);
    CreateDynamicVehicle(522,595.329,868.507,-43.613,271.0,-1,-1);
    CreateDynamicVehicle(522,595.299,869.839,-43.624,271.0,-1,-1);
    CreateDynamicVehicle(522,595.332,871.293,-43.615,271.0,-1,-1);
    CreateDynamicVehicle(522,595.354,872.753,-43.623,271.0,-1,-1);
    CreateDynamicVehicle(522,595.438,874.036,-43.629,271.0,-1,-1);
    CreateDynamicVehicle(522,595.611,875.479,-43.616,271.0,-1,-1);
    CreateDynamicVehicle(522,595.474,876.767,-43.708,271.0,-1,-1);
    CreateDynamicVehicle(522,595.343,878.109,-43.832,271.0,-1,-1);
    CreateDynamicVehicle(522,595.124,879.321,-43.995,271.0,-1,-1);
*/
	CreateDynamicVehicle(406,642.9919,838.0635,-41.4359,270.9502,33,12); //
	CreateDynamicVehicle(486,672.1770,855.8300,-42.7108,326.9547,35,51); //

	// Los Santos In Teleport
    CreateDynamicVehicle(541,2770.2126,-2013.0557,13.1750,270.9405,68,8);
    CreateDynamicVehicle(411,2770.2078,-2016.2474,13.2732,270.2953,112,1);
    CreateDynamicVehicle(506,2770.4141,-2019.8828,13.2616,271.2088,3,3);
    CreateDynamicVehicle(535,2770.3203,-2023.7000,13.2995,270.7233,123,1);
    CreateDynamicVehicle(560,2770.3965,-2027.7014,13.2841,268.0378,52,39);

	// Beach in LS
    CreateDynamicVehicle(522,316.6978,-1789.7188,4.2328,357.7008,39,106); //
    CreateDynamicVehicle(522,318.5042,-1789.4850,4.2642,357.6484,8,82); //
    CreateDynamicVehicle(411,324.3143,-1788.9780,4.5408,356.0362,106,1); //
    CreateDynamicVehicle(556,331.0838,-1810.1825,4.8397,1.6927,1,1); //
    CreateDynamicVehicle(451,321.0078,-1808.3312,4.1900,180.9093,61,61); //
    CreateDynamicVehicle(411,331.1029,-1789.4718,4.5965,0.7213,106,1); //
    CreateDynamicVehicle(560,324.4766,-1808.2997,4.2064,0.2923,123,119); //
    CreateDynamicVehicle(468,327.2210,-1809.0558,4.1557,0.1932,49,123); //
    CreateDynamicVehicle(468,328.7057,-1809.3218,4.1516,359.9512,49,123); //
    CreateDynamicVehicle(568,334.3567,-1809.2902,4.3424,0.1765,10,7); //
    CreateDynamicVehicle(464,337.7785,-1815.6738,3.6234,356.6407,10,7); //
    CreateDynamicVehicle(587,334.6678,-1788.7634,4.6283,359.3434,68,59); //
    CreateDynamicVehicle(415,337.7723,-1789.5177,4.7281,358.8219,54,97); //
    CreateDynamicVehicle(402,328.2269,-1789.0116,4.6006,2.8391,10,7); //
    CreateDynamicVehicle(424,337.4832,-1808.6166,4.3046,359.7342,10,7); //
    CreateDynamicVehicle(603,340.8817,-1809.5313,4.3492,0.5809,10,7); //

	// Maddog Cars
    CreateDynamicVehicle(603,1242.5118,-806.4170,83.9795,178.3486,99,42); //
    CreateDynamicVehicle(411,1248.9347,-805.9772,83.8677,179.5050,10,7); //
    CreateDynamicVehicle(525,1254.7886,-805.1506,84.0242,180.7209,16,16); //
    CreateDynamicVehicle(510,1305.7043,-798.3634,83.7456,205.2006,114,11); //
    CreateDynamicVehicle(447,1291.5994,-790.5992,96.4728,180.8791,25,119); //
    CreateDynamicVehicle(571,1299.2642,-787.4036,87.5964,179.8975,8,64); //
    CreateDynamicVehicle(522,1254.5098,-788.3231,91.6015,32.3359,13,6);

	// BigDrag
    CreateDynamicVehicle(411,1585.929,-1223.082,277.674,0.0,-1,-1);
    CreateDynamicVehicle(411,1582.045,-1222.924,277.675,0.0,-1,-1);
    CreateDynamicVehicle(411,1577.763,-1222.601,277.676,0.0,-1,-1);
    CreateDynamicVehicle(411,1585.890,-1231.233,277.674,0.0,-1,-1);
    CreateDynamicVehicle(411,1581.686,-1230.978,277.674,0.0,-1,-1);
    CreateDynamicVehicle(411,1577.329,-1230.085,277.676,0.0,-1,-1);
    CreateDynamicVehicle(411,1574.441,-1222.748,277.677,0.0,-1,-1);
    CreateDynamicVehicle(411,1574.421,-1230.141,277.677,0.0,-1,-1);

	// Drag 3
	//CreateDynamicVehicle(411,-2677.5408,1277.5658,55.1730,358.2020,10,7); // drag3
	//CreateDynamicVehicle(560,-2694.6101,1278.0598,55.1351,358.3655,108,42); //
	//CreateDynamicVehicle(415,-2686.8364,1275.3353,55.2431,0.1180,87,11); //
	//CreateDynamicVehicle(559,-2667.9041,1275.4664,55.0860,356.9091,94,88); //
#if defined UVS
    // Red Country Farm
    CreateDynamicVehicle(531,24.738,-62.417,2.391,339.0,-1,-1);
    CreateDynamicVehicle(531,21.689,-59.837,2.770,339.0,-1,-1);
    CreateDynamicVehicle(531,18.619,-58.692,3.068,339.0,-1,-1);
    CreateDynamicVehicle(531,80.255,-2.690,0.623,78.0,-1,-1);
    CreateDynamicVehicle(531,80.530,-5.627,0.623,78.0,-1,-1);
    CreateDynamicVehicle(531,79.319,-8.643,0.623,78.0,-1,-1);
    CreateDynamicVehicle(531,63.481,30.907,0.616,132.0,-1,-1);
    CreateDynamicVehicle(531,60.685,33.868,0.743,132.0,-1,-1);
    CreateDynamicVehicle(531,79.079,-13.758,0.623,78.0,-1,-1);
    CreateDynamicVehicle(531,78.823,-16.545,0.623,78.0,-1,-1);
    CreateDynamicVehicle(531,78.127,-20.140,0.616,78.0,-1,-1);
    CreateDynamicVehicle(531,77.309,-26.534,0.616,78.0,-1,-1);
    CreateDynamicVehicle(531,76.888,-29.963,0.616,78.0,-1,-1);
    CreateDynamicVehicle(531,75.736,-32.788,0.616,78.0,-1,-1);
    CreateDynamicVehicle(531,-84.253,-20.272,3.124,253.0,-1,-1);
    CreateDynamicVehicle(531,-77.745,2.418,3.124,253.0,-1,-1);
    CreateDynamicVehicle(532,22.5594,69.8606,4.0943,157.0228,39,123);
    CreateDynamicVehicle(532,46.6889,63.4309,3.3469,155.3027,103,107);
	CreateDynamicVehicle(610,87.8134,-56.3841,0.1750,98.0875,114,47);

    // Bounce
    CreateDynamicVehicle(444,3688.601,-500.255,349.251,203.0,-1,-1);
    CreateDynamicVehicle(444,3710.354,-503.633,344.751,134.0,-1,-1);
    CreateDynamicVehicle(444,3704.641,-503.737,345.001,168.0,-1,-1);
    CreateDynamicVehicle(444,3698.799,-505.303,346.259,179.0,-1,-1);
    CreateDynamicVehicle(444,3694.110,-501.137,349.001,177.0,-1,-1);
    CreateDynamicVehicle(444,3705.369,-495.403,346.751,168.0,-1,-1);
    CreateDynamicVehicle(444,3700.680,-498.063,346.009,179.0,-1,-1);
    CreateDynamicVehicle(444,3696.134,-493.642,349.001,168.0,-1,-1);
    CreateDynamicVehicle(444,3691.011,-492.996,350.251,179.0,-1,-1);

	// Jizzy Jump
	CreateDynamicVehicle(411,-1670.894,2013.966,1102.679,122.0,-1,-1);
	CreateDynamicVehicle(451,-1673.650,2017.873,1102.929,122.0,-1,-1);
	CreateDynamicVehicle(562,-1675.649,2021.154,1102.929,122.0,-1,-1);
	CreateDynamicVehicle(603,-1677.922,2024.799,1102.929,122.0,-1,-1);
	CreateDynamicVehicle(599,-1679.778,2028.085,1102.929,122.0,-1,-1);
	CreateDynamicVehicle(411,-1682.385,2031.282,1102.929,122.0,-1,-1);
#endif
	// Wang Cars
    CreateDynamicVehicle(415,-1954.7073,256.0623,40.8032,51.0014,154,146); //
    CreateDynamicVehicle(402,-1954.5846,267.3177,40.8857,318.7112,1,1); //
    CreateDynamicVehicle(559,-1947.2710,270.9848,40.7258,46.0311,130,130); //
    CreateDynamicVehicle(451,-1956.7255,278.3185,40.7663,180.9744,166,166); //
    CreateDynamicVehicle(411,-1954.8372,292.0864,40.7783,129.0001,171,171); //
    CreateDynamicVehicle(451,-1954.2684,295.1499,35.1885,89.4850,175,175); //
    CreateDynamicVehicle(411,-1955.0797,268.2524,35.2008,47.7772,1,1); //
    CreateDynamicVehicle(402,-1957.2855,257.4957,35.3043,332.0001,0,0); //
    CreateDynamicVehicle(475,-1948.4967,258.8521,35.3088,33.4415,6,6); //

	// Ottos Autos
    CreateDynamicVehicle(560,-1654.3789,1214.5211,6.9189,223.7075,7,7); //
    CreateDynamicVehicle(495,-1660.6857,1215.7128,7.5390,221.1336,176,176); //
    CreateDynamicVehicle(506,-1667.4076,1206.6486,13.3461,308.0001,171,171); //
    CreateDynamicVehicle(411,-1654.4434,1212.1846,13.4139,314.8790,166,166); //
    CreateDynamicVehicle(559,-1662.4047,1220.4469,13.3521,258.1208,158,158); //
    CreateDynamicVehicle(415,-1654.8646,1205.7302,20.9590,74.7379,130,130); //
    CreateDynamicVehicle(541,-1669.2279,1206.5551,20.7918,332.0023,0,6); //
    CreateDynamicVehicle(522,-1676.5281,1205.6720,20.6774,294.0099,132,132); //
    CreateDynamicVehicle(429,-1662.5743,1219.3070,20.8296,247.1201,154,146); //

    // Drift 10
    CreateDynamicVehicle(429,1308.294,-717.318,92.147,22.0,-1,-1);
    CreateDynamicVehicle(560,1304.887,-718.629,92.225,22.0,-1,-1);
    CreateDynamicVehicle(402,1301.582,-719.813,92.293,22.0,-1,-1);
    CreateDynamicVehicle(562,1298.791,-721.049,92.371,22.0,-1,-1);
    CreateDynamicVehicle(587,1296.014,-722.029,92.427,22.0,-1,-1);
    CreateDynamicVehicle(565,1293.486,-723.088,92.615,22.0,-1,-1);
    CreateDynamicVehicle(429,1290.900,-724.046,92.717,22.0,-1,-1);
    CreateDynamicVehicle(541,1311.587,-716.439,92.105,22.0,-1,-1);
    CreateDynamicVehicle(606,1921.9775,-2616.0557,13.6112,359.6913,0,0); // tr 1
    CreateDynamicVehicle(606,1921.5573,-2621.1074,13.6013,359.1840,0,0); // tr 2
    CreateDynamicVehicle(606,1921.7251,-2625.9675,13.6002,358.8808,0,0); // tr 3
    CreateDynamicVehicle(607,1921.9962,-2630.3262,13.5951,359.5740,0,0); // tr 4

	// Tokyo Drift
    CreateDynamicVehicle(560,1284.3405,-3673.9172,317.4051,154.1618,48,31); // tdcars
    CreateDynamicVehicle(562,1282.7501,-3671.8645,317.3814,151.4292,2,59); //
    CreateDynamicVehicle(411,1266.2083,-3663.4451,317.9329,145.1712,51,34); //
    CreateDynamicVehicle(451,1258.0513,-3657.9724,318.1050,147.7524,71,77); //
    CreateDynamicVehicle(522,1261.9497,-3644.9956,318.1344,150.8242,10,7); //
    CreateDynamicVehicle(571,1274.0779,-3639.3772,317.6074,139.2687,90,105); //

	// Hillhouse
    CreateDynamicVehicle(451,-683.4935,966.5393,11.7561,92.7681,76,7); //
    CreateDynamicVehicle(471,-707.8467,941.6693,12.1018,88.6843,118,99); //
    CreateDynamicVehicle(446,-648.1653,866.4231,-0.5627,227.1133,18,4); //
    CreateDynamicVehicle(447,-655.3535,962.9319,12.1706,259.8211,50,55); //
    CreateDynamicVehicle(481,-696.4873,929.1113,11.7885,182.4660,4,4); //
#if defined UVS
	// Island Cars
    CreateDynamicVehicle(522,3294.0989,5724.4595,5.4029,235.4483,10,7); //
    CreateDynamicVehicle(446,3336.0955,5716.9194,-0.1261,221.2182,92,88); //
    CreateDynamicVehicle(446,3295.5901,5672.8330,0.1555,248.9964,115,4); //
    CreateDynamicVehicle(425,3277.7532,5737.5327,6.2267,203.5665,122,38); //
    CreateDynamicVehicle(522,3416.6572,5712.9282,1.2372,272.7771,11,11); //
    CreateDynamicVehicle(454,3516.4583,5692.3984,-0.2581,176.3770,75,122); //
    CreateDynamicVehicle(539,3429.3188,5715.2939,1.1663,272.0449,60,89); //
#endif
    // Tehenyek
    CreateDynamicVehicle(411,2879.2715,2371.9929,10.5613,266.4584,10,7);
    CreateDynamicVehicle(522,2878.5427,2380.3230,10.3953,273.3051,10,7);
    CreateDynamicVehicle(429,2887.624,2310.825,10.530,0.0,-1,-1);
    CreateDynamicVehicle(429,2890.722,2342.188,10.530,89.0,-1,-1);
    CreateDynamicVehicle(429,2866.871,2342.408,10.530,89.0,-1,-1);
    CreateDynamicVehicle(429,2866.810,2375.467,10.530,89.0,-1,-1);
    CreateDynamicVehicle(429,2845.912,2401.547,10.530,225.0,-1,-1);
    CreateDynamicVehicle(429,2853.388,2360.963,10.530,270.0,-1,-1);
/*
    // Stunt Bridge
    CreateDynamicVehicle(522,-1652.729,541.141,38.001,316.0,-1,-1);
    CreateDynamicVehicle(522,-1654.211,542.909,38.012,316.0,-1,-1);
    CreateDynamicVehicle(522,-1655.665,544.368,38.015,316.0,-1,-1);
    CreateDynamicVehicle(522,-1657.145,545.680,38.012,316.0,-1,-1);
    CreateDynamicVehicle(522,-1658.659,547.234,38.016,316.0,-1,-1);
    CreateDynamicVehicle(522,-1662.944,552.853,38.079,316.0,-1,-1);
    CreateDynamicVehicle(522,-1664.503,554.523,38.079,316.0,-1,-1);
    CreateDynamicVehicle(522,-1666.312,555.932,38.065,316.0,-1,-1);
    CreateDynamicVehicle(522,-1667.845,557.543,38.065,316.0,-1,-1);
    CreateDynamicVehicle(522,-1669.792,559.056,38.055,316.0,-1,-1);
*/
	// Army Stunt
    CreateDynamicVehicle(522,-1375.901,444.426,29.746,179.0,-1,-1);
    CreateDynamicVehicle(522,-1378.646,444.476,29.742,179.0,-1,-1);
    CreateDynamicVehicle(522,-1381.289,444.549,29.742,179.0,-1,-1);
    CreateDynamicVehicle(522,-1383.332,444.610,29.742,179.0,-1,-1);
    CreateDynamicVehicle(522,-1385.264,444.554,29.742,179.0,-1,-1);
    CreateDynamicVehicle(522,-1387.085,444.763,29.742,179.0,-1,-1);
    CreateDynamicVehicle(522,-1388.844,444.799,29.742,179.0,-1,-1);
    CreateDynamicVehicle(522,-1391.012,444.932,29.742,179.0,-1,-1);
    CreateDynamicVehicle(522,-1393.288,444.960,29.742,179.0,-1,-1);
    CreateDynamicVehicle(461,-1394.242,429.703,29.742,270.0,-1,-1);
    CreateDynamicVehicle(461,-1394.144,431.540,29.742,270.0,-1,-1);
    CreateDynamicVehicle(521,-1394.083,433.720,29.742,270.0,-1,-1);
    CreateDynamicVehicle(521,-1394.428,435.770,29.742,270.0,-1,-1);
    CreateDynamicVehicle(581,-1394.449,437.926,29.742,270.0,-1,-1);
    CreateDynamicVehicle(581,-1394.290,439.874,29.742,270.0,-1,-1);
    CreateDynamicVehicle(520,-1411.4504,516.3850,18.9654,269.5272,85,113);

	// Shipstunt része
    CreateDynamicVehicle(425,-1248.1364,503.3743,19.0335,177.4994,14,96);

	// PartyHouse
	CreateDynamicVehicle(507,-2815.8811,-1512.3770,139.3848,274.3382,90,25);
	CreateDynamicVehicle(471,-2823.4045,-1521.4481,138.9364,89.6177,70,91);
	CreateDynamicVehicle(481,-2823.0659,-1523.5123,138.8074,90.4236,31,109);
	CreateDynamicVehicle(468,-2823.1665,-1525.2834,138.8858,94.5517,56,17);
	CreateDynamicVehicle(572,-2803.0662,-1524.7523,138.8689,275.7628,19,71);
	CreateDynamicVehicle(531,-2802.7292,-1519.1519,139.2500,272.0728,100,102);

	// LS FD
	CreateDynamicVehicle(407,1751.2607,-1455.2057,13.6718,265.7908,-1,-1);

	// SF FD
	CreateDynamicVehicle(407,-2021.7490,93.3136,28.1813,273.3834,-1,-1);
	CreateDynamicVehicle(407,-2022.4576,84.0655,28.1897,271.0263,-1,-1);
	CreateDynamicVehicle(407,-2021.3549,74.6440,28.2443,271.2214,-1,-1);
	CreateDynamicVehicle(544,-2057.1604,93.4336,28.6293,89.8616,-1,-1);
	CreateDynamicVehicle(544,-2054.5552,83.8603,28.6252,89.9264,-1,-1);
	CreateDynamicVehicle(544,-2056.1238,75.4279,28.6231,88.0027,-1,-1);

	// LV FD
	CreateDynamicVehicle(407,1770.9331,2075.6084,10.9461,183.1730,-1,-1);
	CreateDynamicVehicle(407,1763.2371,2075.5122,10.9484,178.9487,-1,-1);
	CreateDynamicVehicle(407,1757.3029,2076.2349,10.9446,179.3077,-1,-1);
	CreateDynamicVehicle(407,1751.1746,2076.2407,10.9484,181.4799,-1,-1);

	// LS Ambulan
	CreateDynamicVehicle(416,2030.9385,-1438.3501,17.2540,178.0881,-1,-1);
	CreateDynamicVehicle(416,2016.9788,-1418.1549,17.0999,89.6279,-1,-1);

	// SF Ambulan
	CreateDynamicVehicle(416,-2636.5847,619.2770,14.5612,90.7143,-1,-1);
	CreateDynamicVehicle(416,-2663.0383,619.2491,14.5614,90.1395,-1,-1);

	// LV Ambulan
	CreateDynamicVehicle(416,1592.6471,1820.7076,10.9259,1.9218,-1,-1);
	CreateDynamicVehicle(416,1623.8118,1818.9467,10.9245,0.7964,-1,-1);

	// SF Zöld Drift
	CreateDynamicVehicle(402,-2132.935,922.162,79.721,271.0,-1,-1);
	CreateDynamicVehicle(402,-2133.003,919.171,79.721,271.0,-1,-1);
	CreateDynamicVehicle(402,-2132.993,916.153,79.721,271.0,-1,-1);
	CreateDynamicVehicle(402,-2133.042,913.255,79.721,271.0,-1,-1);

	// Bank
	CreateDynamicVehicle(411,2186.9050,2004.4042,10.5625,89.7557,6,102);
	CreateDynamicVehicle(451,2186.4102,1983.5858,10.4477,88.3531,5,27);
	CreateDynamicVehicle(521,2171.2456,1973.7765,10.3918,268.8767,67,19);

	// Csik
	CreateDynamicVehicle(522,3118.049,818.383,114.074,0.0,-1,-1);
	CreateDynamicVehicle(522,3121.082,818.684,114.074,0.0,-1,-1);
	CreateDynamicVehicle(522,3124.296,819.256,114.074,0.0,-1,-1);
	CreateDynamicVehicle(522,3126.568,819.775,114.074,0.0,-1,-1);
	CreateDynamicVehicle(522,3128.748,819.656,114.074,0.0,-1,-1);

	// Monster
	CreateDynamicVehicle(556,1632.385,578.137,2.497,179.0,-1,-1);
	CreateDynamicVehicle(556,1623.945,578.251,1.747,179.0,-1,-1);
	CreateDynamicVehicle(556,1624.022,584.967,2.547,179.0,-1,-1);
	CreateDynamicVehicle(556,1623.839,592.202,2.922,179.0,-1,-1);
	CreateDynamicVehicle(556,1632.278,584.954,3.047,179.0,-1,-1);
	CreateDynamicVehicle(556,1632.254,591.876,3.047,179.0,-1,-1);
	CreateDynamicVehicle(520,1645.4340,631.7150,11.5435,182.0128,29,89);
	CreateDynamicVehicle(425,1610.5742,633.5919,11.3529,176.7174,74,62);
#if defined UVS
	// Truck Stop
    CreateDynamicVehicle(435,577.185,1633.768,8.817,32.0,-1,-1);
    CreateDynamicVehicle(435,581.786,1637.111,8.842,32.0,-1,-1);
    CreateDynamicVehicle(450,585.684,1640.443,8.817,32.0,-1,-1);
    CreateDynamicVehicle(450,589.651,1642.870,8.817,32.0,-1,-1);
    CreateDynamicVehicle(591,594.267,1645.716,8.817,32.0,-1,-1);
    CreateDynamicVehicle(591,598.167,1648.196,8.817,32.0,-1,-1);
    CreateDynamicVehicle(584,601.664,1650.651,8.817,32.0,-1,-1);
    CreateDynamicVehicle(584,605.138,1652.969,8.817,32.0,-1,-1);
    CreateDynamicVehicle(591,609.074,1655.417,8.817,32.0,-1,-1);
    CreateDynamicVehicle(584,612.862,1658.109,8.817,32.0,-1,-1);
    CreateDynamicVehicle(535,616.486,1660.303,8.817,32.0,-1,-1);
    CreateDynamicVehicle(514,553.630,1675.228,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,549.105,1672.211,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,557.722,1678.324,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,561.286,1680.680,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,565.132,1683.142,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,569.116,1685.667,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,573.352,1688.339,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,577.234,1690.795,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,580.806,1693.022,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,584.362,1695.646,7.692,33.0,-1,-1);
    CreateDynamicVehicle(514,588.150,1698.083,7.692,33.0,-1,-1);
#endif
	// Drift
	CreateDynamicVehicle(411,-754.265,2758.943,45.618,182.0,-1,-1); // Infernus
	CreateDynamicVehicle(415,-762.217,2758.487,45.618,182.0,-1,-1); // Cheetach
	CreateDynamicVehicle(565,-766.233,2758.229,45.618,182.0,-1,-1); // Flash
	CreateDynamicVehicle(506,-770.070,2758.088,45.596,182.0,-1,-1); // Super GT
	CreateDynamicVehicle(451,-774.384,2758.199,45.565,182.0,-1,-1); // Turismo
	CreateDynamicVehicle(560,-758.170,2758.744,45.618,182.0,-1,-1); // Sultan

	// Combine
	CreateDynamicVehicle(532,-320.853,-1409.244,13.716,306.0,-1,-1);
//	CreateDynamicVehicle(532,-257.646,-1330.881,8.138,192.0,-1,-1);
	CreateDynamicVehicle(532,-256.540,-1362.988,9.204,250.0,-1,-1);
//	CreateDynamicVehicle(532,-201.353,-1389.165,5.479,0.0,-1,-1);
	CreateDynamicVehicle(532,-410.891,-1354.756,9.204,250.0,-1,-1);
//	CreateDynamicVehicle(532,-403.401,-1369.070,23.746,22.0,-1,-1);
	CreateDynamicVehicle(532,-542.855,-1404.047,14.128,304.0,-1,-1);
	CreateDynamicVehicle(532,-443.406,-1307.977,34.372,135.0,-1,-1);
//	CreateDynamicVehicle(532,-490.927,-1340.104,26.790,192.0,-1,-1);
	CreateDynamicVehicle(532,-574.102,-1299.396,22.126,237.0,-1,-1);
	CreateDynamicVehicle(531,-290.8152,-1377.3473,9.4327,336.3948,-1,-1);
	CreateDynamicVehicle(531,-372.4688,-1419.7368,25.6914,359.4031,-1,-1);

	// My Stunt Zone Hajóstunt
	CreateDynamicVehicle(522,-1519.957,523.660,6.840,271.0,-1,-1);
	CreateDynamicVehicle(522,-1519.928,525.553,6.840,271.0,-1,-1);
	CreateDynamicVehicle(522,-1519.970,527.657,6.840,271.0,-1,-1);
	CreateDynamicVehicle(522,-1519.943,529.691,6.840,271.0,-1,-1);
	CreateDynamicVehicle(522,-1519.936,531.827,6.840,271.0,-1,-1);
	CreateDynamicVehicle(522,-1520.093,533.789,6.840,271.0,-1,-1);
	CreateDynamicVehicle(522,-1519.888,535.558,6.840,271.0,-1,-1);
	CreateDynamicVehicle(522,-1519.879,537.545,6.840,271.0,-1,-1);

	// Fun 2 ( /falldown )
	CreateDynamicVehicle(411,6975.793,-1399.958,73.276,271.0,-1,-1);
	CreateDynamicVehicle(411,6975.743,-1403.005,73.226,271.0,-1,-1);
	CreateDynamicVehicle(411,6975.866,-1406.415,73.426,271.0,-1,-1);
	CreateDynamicVehicle(411,6975.800,-1409.638,73.526,271.0,-1,-1);
	CreateDynamicVehicle(411,6975.484,-1412.874,73.726,271.0,-1,-1);
	CreateDynamicVehicle(411,6984.340,-1400.130,73.751,90.0,-1,-1);
	CreateDynamicVehicle(411,6984.305,-1403.311,73.751,90.0,-1,-1);
	CreateDynamicVehicle(411,6984.061,-1406.565,73.651,90.0,-1,-1);
	CreateDynamicVehicle(411,6984.094,-1409.550,73.626,90.0,-1,-1);
	CreateDynamicVehicle(411,6984.123,-1412.921,73.651,90.0,-1,-1);

	// Golf Stunt
	CreateDynamicVehicle(522,1475.586,2850.190,10.481,89.0,-1,-1);
	CreateDynamicVehicle(522,1475.825,2848.454,10.481,89.0,-1,-1);
/*
	CreateDynamicVehicle(522,1475.819,2846.737,10.481,89.0,-1,-1);
	CreateDynamicVehicle(522,1475.876,2844.913,10.481,89.0,-1,-1);
	CreateDynamicVehicle(522,1475.799,2843.181,10.481,89.0,-1,-1);
	CreateDynamicVehicle(522,1475.712,2841.402,10.481,89.0,-1,-1);
	CreateDynamicVehicle(522,1475.635,2839.786,10.481,89.0,-1,-1);
	CreateDynamicVehicle(522,1475.681,2838.015,10.481,89.0,-1,-1);
	CreateDynamicVehicle(522,1475.585,2836.371,10.481,89.0,-1,-1);
	*/
	// Glass Jump
	CreateDynamicVehicle(499,-997.224,-1772.057,947.966,0.0,-1,-1);
	CreateDynamicVehicle(422,-994.305,-1772.065,947.966,0.0,-1,-1);
	CreateDynamicVehicle(482,-991.154,-1771.865,947.921,0.0,-1,-1);
	CreateDynamicVehicle(470,-987.962,-1772.028,947.921,0.0,-1,-1);
	CreateDynamicVehicle(600,-984.857,-1772.043,947.921,0.0,-1,-1);
	CreateDynamicVehicle(413,-981.591,-1772.144,947.921,0.0,-1,-1);
	CreateDynamicVehicle(489,-978.362,-1772.080,947.921,0.0,-1,-1);
	CreateDynamicVehicle(442,-975.185,-1772.093,947.921,0.0,-1,-1);
	CreateDynamicVehicle(440,-972.236,-1772.320,947.921,0.0,-1,-1);
	CreateDynamicVehicle(475,-969.024,-1771.905,947.921,0.0,-1,-1);
	CreateDynamicVehicle(439,-965.611,-1771.895,947.921,0.0,-1,-1);
	CreateDynamicVehicle(574,-962.423,-1771.700,947.921,0.0,-1,-1);
	CreateDynamicVehicle(459,-959.360,-1771.579,947.921,0.0,-1,-1);
	CreateDynamicVehicle(437,-979.9022,-1745.5709,947.9054,179.1423,10,76); //
	CreateDynamicVehicle(443,-968.4416,-1750.0098,948.4240,178.6046,123,41); //
//	CreateDynamicVehicle(432,-958.9130,-1746.2280,947.7809,177.9950,12,12); //
	CreateDynamicVehicle(573,-932.1398,-1761.1831,948.4217,88.8470,40,78); //
	CreateDynamicVehicle(573,-931.9716,-1754.3831,948.4218,90.4258,40,78); //
#if defined UVS
	// Jump 2
	CreateDynamicVehicle(411,1863.442,-933.304,400.957,90.0,-1,-1);
	CreateDynamicVehicle(411,1863.617,-926.902,400.957,90.0,-1,-1);
	CreateDynamicVehicle(411,1863.442,-920.528,400.957,90.0,-1,-1);
	CreateDynamicVehicle(411,1834.261,-933.169,400.957,271.0,-1,-1);
	CreateDynamicVehicle(411,1834.382,-926.860,400.957,270.0,-1,-1);
	CreateDynamicVehicle(411,1834.197,-920.692,400.957,270.0,-1,-1);

	// SFjump
	CreateDynamicVehicle(451, -3082.0857, 1454.7799, 436.6549, 179.3758, 61, 61); // tur
	CreateDynamicVehicle(451, -3088.3804, 1454.6664, 436.6575, 178.7349, 46, 46); // tur
	CreateDynamicVehicle(411, -3094.8184, 1455.1267, 436.6723, 180.1433, 12, 1); // infer
	CreateDynamicVehicle(411, -3101.2285, 1455.2810, 436.6720, 177.3292, 75, 1); // infer
	CreateDynamicVehicle(402, -3107.5276, 1454.8022, 436.7775, 179.2666, 30, 30); // buff
	CreateDynamicVehicle(560, -3113.9373, 1455.1038, 436.6582, 179.6094, 37, 0); // sul
	CreateDynamicVehicle(559, -3120.4109, 1455.1302, 436.6095, 179.7407, 68, 8); // jes
	CreateDynamicVehicle(480, -3126.7517, 1455.1058, 436.7266, 180.2162, 2, 2); // com
	CreateDynamicVehicle(437, -3143.7688, 1454.9047, 437.1257, 269.7397, 95, 16); // bus
	CreateDynamicVehicle(556, -3147.4861, 1444.9569, 437.3573, 270.4201, 1, 1); // moster
	CreateDynamicVehicle(406, -3145.3521, 1437.2178, 438.4980, 270.1839, 1, 1); // DUDE
	CreateDynamicVehicle(541, -3145.9280, 1425.2032, 436.5853, 0.7578, 13, 8); // bullet
	CreateDynamicVehicle(541, -3139.7620, 1425.1974, 436.5861, 359.7430, 22, 1); // bullet
	CreateDynamicVehicle(506, -3133.3040, 1425.3682, 436.6593, 0.8345, 76, 76); // tur
	CreateDynamicVehicle(415, -3126.8440, 1425.3997, 436.7276, 359.2770, 40, 1); // cheetah

	// Bikejump
   	CreateDynamicVehicle(522, 637.564, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(522, 640.914, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(481, 634.664, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(481, 631.913, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(468, 628.662, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(468, 625.412, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(463, 622.287, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(463, 618.813, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(462, 615.813, 2218.509, 940.239, 0.0, -1, -1);
	CreateDynamicVehicle(462, 612.937, 2218.509, 940.239, 0.0, -1, -1);

	// PipeJump (12 vehicles)
	CreateDynamicVehicle(411, 956.2487, -1391.8467, 654.1215, 179.5437, 0, 1); // pp_infernus
	CreateDynamicVehicle(411, 949.9069, -1391.5989, 654.1215, 180.8280, 6, 6); // pp_Infernus
	CreateDynamicVehicle(411, 956.3107, -1382.5273, 654.1231, 359.3093, 6, 6); // pp_Infernus
	CreateDynamicVehicle(411, 949.7828, -1382.6814, 654.1215, 0.6219, 0, 1); // pp_Infernus
	CreateDynamicVehicle(541, 940.2498, -1372.3344, 654.0193, 180.5178, 1, 7); // pp_Bullet
	CreateDynamicVehicle(541, 933.9158, -1372.1423, 654.0194, 181.0151, 0, 6); // pp_Bullet
	//CreateDynamicVehicle(409, 904.0321, -1375.1405, 654.1932, 181.0304, 0, 0); // pp_Stretch
	CreateDynamicVehicle(559, 969.0681, -1402.2852, 654.0507, 359.7656, 176, 176); // pp_Jester
	CreateDynamicVehicle(559, 965.8836, -1402.3059, 654.0507, 358.5548, 175, 175); // pp_Jester
	//CreateDynamicVehicle(457, 930.7847, -1391.7670, 654.0211, 359.5049, 32, 1); // pp_Caddy
	//CreateDynamicVehicle(457, 927.5911, -1391.7394, 654.0211, 359.5049, 32, 1); // pp_Caddy
	//CreateDynamicVehicle(457, 924.1359, -1391.7096, 654.0211, 359.5049, 32, 1); // pp_Caddy
	CreateDynamicVehicle(411, 914.6725, -1401.7533, 654.1290, 359.7388, 1, 1); // pp_Infernus
	CreateDynamicVehicle(411, 911.5115, -1401.8556, 654.1290, 359.7388, 1, 1); // pp_Infernus
	CreateDynamicVehicle(411, 908.3181, -1401.8412, 654.1290, 359.7388, 1, 1); // pp_Infernus
	
	// QJump
	CreateDynamicVehicle(411,864.935,227.735,587.350,20.0,-1,-1);
	CreateDynamicVehicle(541,881.237,234.234,587.350,20.0,-1,-1);
	CreateDynamicVehicle(603,873.811,230.885,587.350,20.0,-1,-1);
	CreateDynamicVehicle(402,847.777,258.789,587.350,20.0,-1,-1);
	CreateDynamicVehicle(560,855.394,239.636,587.350,0.0,-1,-1);
	CreateDynamicVehicle(487,882.132,249.639,587.350,43.0,-1,-1);
	CreateDynamicVehicle(568,876.509,269.178,587.350,21.0,-1,-1);
	CreateDynamicVehicle(522,861.652,255.695,587.350,21.0,-1,-1);
	CreateDynamicVehicle(468,867.955,258.092,587.350,21.0,-1,-1);

	// SKIRamp
	CreateDynamicVehicle(415,-1303.6017,-1660.9081,538.2225,353.1777,130,130); // SKIRAMP-CHEETAH-1
	CreateDynamicVehicle(415,-1306.8027,-1660.6342,538.2216,353.5898,114,106); // SKIRAMP-CHEETAH-2
	CreateDynamicVehicle(415,-1307.6282,-1668.7665,538.2217,174.0615,130,130); // SKIRAMP-CHEETAH-3
	CreateDynamicVehicle(415,-1304.4297,-1669.0270,538.2222,174.0614,114,106); // SKIRAMP-CHEETAH-4
	CreateDynamicVehicle(437,-1327.7188,-1677.6526,538.5835,262.8995,99,52); // SKIRAMP-COACH-1
	CreateDynamicVehicle(437,-1324.7375,-1647.9915,538.5934,263.0820,99,52); // SKIRAMP-COACH-2
	CreateDynamicVehicle(411,-1273.7748,-1683.2458,538.1775,354.1786,106,1); // SKIRAMP-INFERNUS-1
	CreateDynamicVehicle(411,-1276.9615,-1682.9397,538.1775,354.1908,80,1); // SKIRAMP-INFERNUS-2
	CreateDynamicVehicle(411,-1280.1732,-1682.5282,538.1775,353.7160,12,1); // SKIRAMP-INFERNUS-3
	CreateDynamicVehicle(411,-1283.2382,-1682.1975,538.1774,353.8906,64,1); // SKIRAMP-INFERNUS-4
	CreateDynamicVehicle(411,-1286.5723,-1681.7646,538.1774,353.5283,123,1); // SKIRAMP-INFERNUS-5
	CreateDynamicVehicle(451,-1273.7832,-1653.3217,538.1571,173.3969,36,36); // SKIRAMP-TURISMO-2
	CreateDynamicVehicle(451,-1270.6949,-1653.5406,538.1300,173.2510,125,125); // SKIRAMP-TURISMO-1
	CreateDynamicVehicle(451,-1277.0070,-1653.1075,538.1571,173.7635,16,16); // SKIRAMP-TURISMO-3
	CreateDynamicVehicle(451,-1280.1930,-1652.7335,538.1572,173.4489,18,18); // SKIRAMP-TURISMO-4
	CreateDynamicVehicle(451,-1283.3954,-1652.3607,538.1566,174.2572,46,46); // SKIRAMP-TURISMO-5
	CreateDynamicVehicle(407,-1310.7633,-1678.4587,538.6887,286.3398,3,1); // SKIRAMP-FIRETRUCK-1
	CreateDynamicVehicle(454,-1263.6328,-1657.8984,538.6894,227.4370,126,97); // SKIRAMP-TROPIC-1

	// Racemap
	CreateDynamicVehicle(411, -2907.344, -410.232, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(411, -2901.547, -410.232, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(541, -2901.547, -403.482, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(541, -2901.547, -396.407, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(451, -2907.366, -396.407, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(451, -2907.366, -403.307, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(411, -2907.366, -388.557, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(411, -2901.516, -388.557, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(541, -2901.516, -380.307, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(541, -2907.489, -380.307, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(451, -2907.489, -371.807, 6.000, 0.0, -1, -1);
	CreateDynamicVehicle(451, -2901.462, -371.807, 6.000, 0.0, -1, -1);

	// KartTrack
	CreateDynamicVehicle(571, -2792.502, 2931.710, 9.567, 276.0, -1, -1);
	CreateDynamicVehicle(571, -2792.452, 2928.212, 9.617, 276.0, -1, -1);
	CreateDynamicVehicle(571, -2792.452, 2926.312, 9.617, 276.0, -1, -1);
	CreateDynamicVehicle(571, -2792.452, 2923.235, 9.617, 276.0, -1, -1);
	CreateDynamicVehicle(571, -2792.452, 2933.684, 9.617, 276.0, -1, -1);

	// xSlide
	CreateDynamicVehicle(495,1857.446,1358.898,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1857.446,1353.297,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1857.446,1347.947,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1857.446,1342.972,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1857.446,1337.722,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1857.446,1332.747,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1857.446,1327.997,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1857.446,1323.121,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1857.446,1317.921,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1861.972,1348.673,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1861.871,1343.298,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1861.897,1332.747,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1861.797,1327.597,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1861.598,1323.371,555.933,42.0,-1,-1);
	CreateDynamicVehicle(495,1861.820,1354.400,555.933,42.0,-1,-1);

	// Huge Loop (/loop2)
	CreateDynamicVehicle(411, 482.3195, -20.0222, 680.7685, 126.6686, 64, 1); // LOOP-INFERNUS-1
	CreateDynamicVehicle(411, 487.8175, -20.2552, 680.7569, 127.5139, 123, 1); // LOOP-INFERNUS-2
	CreateDynamicVehicle(411, 493.4407, -20.0513, 680.7545, 130.3129, 116, 1); // LOOP-INFERNUS-3
	CreateDynamicVehicle(411, 498.6631, -19.9411, 680.7545, 130.6971, 112, 1); // LOOP-INFERNUS-4
	CreateDynamicVehicle(411, 503.4510, -19.9187, 680.7546, 131.4548, 106, 1); // LOOP-INFERNUS-5
	CreateDynamicVehicle(411, 497.9041, -31.0518, 680.6855, 359.6010, 31, 31); // LOOP-INFERNUS-6
	CreateDynamicVehicle(411, 502.6539, -31.2181, 680.6518, 358.7756, 42, 42); // LOOP-INFERNUS-7
	CreateDynamicVehicle(411, 478.7649, -39.3824, 680.7531, 359.6185, 0, 0);// LOOP-INFERNUS-8
	CreateDynamicVehicle(411, 481.8880, -39.3919, 680.7530, 358.6935, 0, 0); // LOOP-INFERNUS-9
	CreateDynamicVehicle(411, 460.8441, -20.8642, 680.6526, 236.0938, 0, 6); // LOOP-INFERNUS-10
	CreateDynamicVehicle(411, 470.9919, -49.6101, 680.6838, 36.9633, 2, 1); // LOOP-INFERNUS-11
	CreateDynamicVehicle(411, 502.6077, -39.2831, 680.7545, 179.5781, 123, 1); // LOOP-INFERNUS-12
	CreateDynamicVehicle(411, 497.9334, -39.4644, 680.7545, 179.7408, 116, 1); // LOOP-INFERNUS-13
	CreateDynamicVehicle(411, 475.7599, -50.1053, 680.7768, 36.2140, 112, 1); // LOOP-INFERNUS-14
	CreateDynamicVehicle(411, 479.8474, -50.0542, 680.7545, 36.1146, 106, 1); // LOOP-INFERNUS-15
	CreateDynamicVehicle(411, 475.3574, -39.4188, 680.7591, 0.5098, 0, 0); // LOOP-INFERNUS-16

	// Drop
	CreateDynamicVehicle(437, 295.2772, 5518.7529, 3426.8425, 179.9044, 98, 20); //
	CreateDynamicVehicle(437, 299.9650, 5518.7461, 3426.8142, 179.9592, 105, 20); //
	CreateDynamicVehicle(437, 306.0609, 5518.2681, 3426.8396, 182.4004, 123, 20); //
	CreateDynamicVehicle(403, 314.0976, 5515.1069, 3427.3162, 181.1478, 40, 1); //
	CreateDynamicVehicle(515, 321.8836, 5515.2520, 3427.7051, 182.4097, 39, 78); //
	CreateDynamicVehicle(411, 296.2367, 5469.1797, 3426.4128, 214.0033, 116, 1); //
	CreateDynamicVehicle(411, 295.5437, 5474.8315, 3426.4172, 214.9778, 112, 1); //
	CreateDynamicVehicle(411, 296.0901, 5481.6401, 3426.4116, 212.6263, 106, 1); //
	CreateDynamicVehicle(451, 323.3621, 5451.6719, 3426.3926, 88.3324, 36, 36); //
	CreateDynamicVehicle(451, 323.8262, 5456.5967, 3426.3931, 87.6806, 16, 16); //
	CreateDynamicVehicle(429, 325.5258, 5470.3965, 3426.7083, 119.4173, 1, 53); //
	CreateDynamicVehicle(515, 325.3492, 5483.7148, 3427.7334, 158.5261, 11, 76); //
	CreateDynamicVehicle(437, 298.5371, 5459.1216, 3426.8149, 201.3065, 125, 21); //

	// Going Down
	CreateDynamicVehicle(473, 181.0059, -3771.6831, 21731.9453, 50.4984, 56, 53); //
	CreateDynamicVehicle(473, 173.6053, -3780.4648, 21734.7617, 236.0308, 56, 15); //
	CreateDynamicVehicle(574, 202.9803, -3761.6284, 21726.8340, 52.7453, 1, 1); //
	CreateDynamicVehicle(406, 151.2951, -3788.8381, 21741.8652, 236.7986, 1, 1); //
	CreateDynamicVehicle(437, 155.0985, -3784.3186, 21738.9902, 233.0650, 87, 7); //
	CreateDynamicVehicle(515, 158.6592, -3779.2354, 21738.3867, 229.6571, 54, 77); //
	CreateDynamicVehicle(411, 180.0242, -3796.5322, 21737.2305, 53.1044, 112, 1); //
	CreateDynamicVehicle(451, 182.1539, -3793.9675, 21736.3887, 55.1283, 36, 36); //
	CreateDynamicVehicle(411, 184.2509, -3790.8867, 21735.4922, 53.4776, 106, 1); //
	CreateDynamicVehicle(411, 186.0871, -3788.1204, 21734.6816, 51.8998, 80, 1); //
	CreateDynamicVehicle(451, 188.1600, -3786.2490, 21733.9883, 53.2449, 16, 16); //
	CreateDynamicVehicle(574, 201.0175, -3764.1199, 21727.6094, 51.5366, 1, 1); //
	CreateDynamicVehicle(471, 199.1172, -3766.0945, 21728.2148, 52.8331, 74, 91); //
	CreateDynamicVehicle(556, 160.6305, -3772.9443, 21736.2207, 228.8739, 32, 32); //
	CreateDynamicVehicle(571, 164.2093, -3769.9741, 21734.5059, 231.4376, 1, 1); //
#endif
	// Loopfun
	CreateDynamicVehicle(437, 4192.4346, 1894.1066, 2836.2329, 180.1074, 95, 16); //
	CreateDynamicVehicle(403, 4206.9297, 1888.9043, 2836.7334, 179.8585, 25, 1); //
	CreateDynamicVehicle(462, 4197.0542, 1897.6669, 2835.6985, 175.9262, 1, 3); //
	CreateDynamicVehicle(571, 4199.2739, 1897.9971, 2835.3828, 178.6466, 11, 22); //
	CreateDynamicVehicle(522, 4201.2617, 1897.8549, 2835.6677, 177.3986, 3, 8); //
	CreateDynamicVehicle(468, 4202.7471, 1898.2010, 2835.7673, 182.0678, 6, 6); //
	CreateDynamicVehicle(451, 4207.3989, 1873.7778, 2835.8071, 179.5480, 36, 36); //
	CreateDynamicVehicle(411, 4192.3262, 1876.3116, 2835.8281, 179.2995, 112, 1); //
	CreateDynamicVehicle(515, 4207.2271, 1831.2400, 2836.9893, 179.8684, 54, 77); //
	CreateDynamicVehicle(515, 4193.0854, 1829.3533, 2837.0408, 180.7632, 39, 78); //
	CreateDynamicVehicle(495, 4192.3843, 1859.3597, 2836.4539, 180.2284, 88, 99); //
	CreateDynamicVehicle(573, 4207.3413, 1851.8237, 2836.7361, 181.5821, 79, 7); //

	// Bowl
	CreateDynamicVehicle(411, -458.071, -2669.179, 156.987, 318.0, -1, -1);
	CreateDynamicVehicle(411, -461.095, -2665.537, 156.987, 318.0, -1, -1);
	CreateDynamicVehicle(522, -462.845, -2660.979, 156.987, 273.0, -1, -1);
	CreateDynamicVehicle(522, -459.820, -2656.453, 156.987, 220.0, -1, -1);
	CreateDynamicVehicle(522, -456.946, -2653.610, 156.987, 230.0, -1, -1);
	CreateDynamicVehicle(541, -454.621, -2650.616, 156.987, 240.0, -1, -1);
	CreateDynamicVehicle(541, -452.521, -2646.444, 156.987, 240.0, -1, -1);
	CreateDynamicVehicle(411, -450.621, -2643.121, 156.987, 240.0, -1, -1);
	CreateDynamicVehicle(411, -448.496, -2638.896, 156.912, 240.0, -1, -1);
#if defined UVS
	// MonsterChallenge
	CreateDynamicVehicle(556,279.9019,136.3247,3.2131,13.9811,6,6); // Monster B (monsterchallenge)
	CreateDynamicVehicle(556,275.4364,135.1837,3.0187,13.9811,6,6); // Monster B (monsterchallenge)
	CreateDynamicVehicle(556,270.9223,134.0304,2.8222,13.9811,6,6); // Monster B (monsterchallenge)
	CreateDynamicVehicle(556,265.9686,133.1974,2.4859,12.7688,1,1); // MONSTERCHALLENGE-1
	CreateDynamicVehicle(556,261.1065,131.9442,2.3074,12.2243,1,1); // MONSTERCHALLENGE-2
	CreateDynamicVehicle(556,284.2533,138.1302,3.3021,19.7102,1,1); // MONSTERCHALLENGE-3
#endif
	// Quad Parkour
	CreateDynamicVehicle(471,-216.429,-804.083,3.725,339.0,-1,-1);
	CreateDynamicVehicle(471,-214.313,-804.935,3.650,339.0,-1,-1);
	CreateDynamicVehicle(471,-211.910,-805.912,3.529,339.0,-1,-1);
	CreateDynamicVehicle(471,-212.798,-808.834,3.784,339.0,-1,-1);
	CreateDynamicVehicle(471,-215.226,-807.871,3.907,339.0,-1,-1);
	CreateDynamicVehicle(471,-217.293,-806.993,4.009,339.0,-1,-1);

	// Little Town
	CreateDynamicVehicle(560,287.3150,-54.5105,1.2830,180.7846,84,118); //
	CreateDynamicVehicle(578,314.9335,-47.0173,2.2023,271.2244,26,91); //
	CreateDynamicVehicle(468,351.0192,-86.8615,0.9471,93.8104,68,98); //
	CreateDynamicVehicle(451,318.4235,-87.9425,1.9084,271.1705,124,48); //
	CreateDynamicVehicle(559,319.6895,-129.2560,1.7373,271.3352,74,34); //
	CreateDynamicVehicle(507,246.9886,-125.6746,2.3539,88.5163,75,61); //
	CreateDynamicVehicle(517,246.4578,-84.0843,2.0372,89.2838,15,0); //

	// Derby 6
	CreateDynamicVehicle(424,5853.668,-1853.497,235.314,0.0,-1,-1);
	CreateDynamicVehicle(424,5848.603,-1853.291,235.264,0.0,-1,-1);
	CreateDynamicVehicle(424,5844.231,-1853.421,234.289,0.0,-1,-1);
	CreateDynamicVehicle(424,5843.667,-1843.133,235.147,179.0,-1,-1);
	CreateDynamicVehicle(424,5849.854,-1842.579,236.096,179.0,-1,-1);
	CreateDynamicVehicle(424,5854.460,-1842.428,235.896,179.0,-1,-1);
#if defined UVS
	// San Fierro Small Stunt ( SFST )
	CreateDynamicVehicle(522,-2728.3813,388.3123,3.9402,269.9207,52,27); //
	CreateDynamicVehicle(522,-2728.7463,386.8155,3.9353,271.1403,102,26); //
	CreateDynamicVehicle(522,-2728.7690,385.2299,3.9459,270.8948,25,1); //
	CreateDynamicVehicle(522,-2728.6184,383.5963,3.9458,269.5572,32,22); //
	CreateDynamicVehicle(522,-2728.7280,361.1954,3.9908,270.1536,50,17); //
	CreateDynamicVehicle(522,-2728.8484,362.7041,3.9848,273.2989,61,48); //
	CreateDynamicVehicle(522,-2728.9194,364.4725,3.9805,269.5187,120,99); //
	CreateDynamicVehicle(522,-2728.7617,365.9936,3.9746,269.7073,52,53); //
	CreateDynamicVehicle(522,-2728.7314,367.5161,3.9607,271.0921,101,65); //
#endif
	// Sevile HQ
	CreateDynamicVehicle(493,-1139.2520,-2113.1626,-0.0783,94.2574,0,6); // jetmax
	CreateDynamicVehicle(493,-1129.8650,-2109.1370,-0.0745,5.0658,0,6); // jetmax 2
	CreateDynamicVehicle(473,-1148.0790,-2105.6528,-0.2579,9.0917,0,6); // dinghy 1
	CreateDynamicVehicle(473,-1139.9725,-2105.1526,-0.2043,9.3678,6,0); // dinghy 3
	CreateDynamicVehicle(473,-1136.4430,-2104.6978,-0.1726,9.4984,6,0); // dinghy 4
	CreateDynamicVehicle(473,-1145.3239,-2105.8250,-0.3143,3.2790,0,6); // dinghy 2
	CreateDynamicVehicle(487,-1140.2426,-2130.2720,1.3365,276.9951,0,6); // maverick

	CreateDynamicVehicle(422,-2880.5149,-1976.3135,37.7784,315.4767,11,11); // Sevile
	CreateDynamicVehicle(547,-2899.6064,-1955.1665,36.7880,295.0402,11,11);
	CreateDynamicVehicle(546,-2901.1377,-1949.2062,36.6020,285.6400,0,0);
	CreateDynamicVehicle(493,-2973.6516,-2023.1704,-0.7552,301.1121,3,6);
	CreateDynamicVehicle(452,-2977.6338,-2015.5031,0.2768,301.7622,86,3);
	CreateDynamicVehicle(473,-2984.0376,-2010.3230,-0.8988,302.9846,40,50);
	CreateDynamicVehicle(453,-2968.6067,-2029.1582,-0.0075,306.0455,86,3);

    // Messi's Company
	CreateDynamicVehicle(530,2852.1648,924.6258,10.5156,88.8941,0,1);
	CreateDynamicVehicle(530,2851.4590,927.4624,10.5134,89.6939,1,0);
	CreateDynamicVehicle(530,2852.1104,930.5269,10.5005,89.3410,3,49);
	CreateDynamicVehicle(530,2852.0789,932.8981,10.5175,94.8659,4,80);
	CreateDynamicVehicle(578,2872.9011,936.4807,11.3771,181.2079,0,1);
	CreateDynamicVehicle(578,2862.9353,935.8561,11.3752,179.7669,1,0);
	CreateDynamicVehicle(435,2855.6702,898.8688,10.8573,351.5049,84,117);
	CreateDynamicVehicle(435,2827.4700,898.2119,10.3777,353.6248,73,48);
	CreateDynamicVehicle(435,2817.9575,897.6999,10.7745,353.7980,74,87);
	CreateDynamicVehicle(403,2804.6602,968.7444,11.3594,181.2622,1,2);
	CreateDynamicVehicle(403,2825.0278,968.8372,11.3294,176.9990,4,3);
	CreateDynamicVehicle(403,2842.9199,956.4621,11.3287,95.0592,11,10);
	CreateDynamicVehicle(456,2855.5710,849.5756,10.6404,181.9284,60,75);
	CreateDynamicVehicle(456,2826.9824,850.2474,10.5858,180.6256,102,33);
	CreateDynamicVehicle(499,2817.8613,848.5400,10.4692,180.4946,17,108);

	// RaceMap 2   //EZ NEM JÓ HELYEN VAN TE BUZIIIIIIIIIIIIII
	//CreateDynamicVehicle(411,1767.9696,-3086.6038,9.7798,248.7555,40,95);
	//CreateDynamicVehicle(451,1765.4054,-3093.1069,9.6799,248.4505,18,103);
	//CreateDynamicVehicle(541,1757.5784,-3082.0835,9.6775,246.7258,2,1);
	//CreateDynamicVehicle(560,1754.5526,-3089.0449,9.7580,247.7384,31,11);
	//CreateDynamicVehicle(559,1744.7777,-3085.1531,9.7090,248.5839,81,124);
    //CreateDynamicVehicle(411,1747.3926,-3078.2026,9.7798,249.5273,252,0);

	// Trailer
	CreateDynamicVehicle(485, 119.7423, 1780.8658, 17.6152, 90.0000, -1, -1, -1);
	gTrailers[0] = CreateDynamicVehicle(606, 123.7624, 1780.9149, 17.9369, 90.0000, -1, -1, -1);
	CreateDynamicVehicle(606, 127.7071, 1780.9009, 17.9369, 90.0000, -1, -1, -1);
	CreateDynamicVehicle(606, 131.6577, 1780.8748, 17.9369, 90.0000, -1, -1, -1);
	CreateDynamicVehicle(606, 135.5244, 1780.8638, 17.9369, 90.0000, -1, -1, -1);
	CreateDynamicVehicle(606, 139.2980, 1780.8616, 17.9369, 90.0000, -1, -1, -1);
	CreateDynamicVehicle(606, 143.1995, 1780.8519, 17.9369, 90.0000, -1, -1, -1);
	CreateDynamicVehicle(606, 147.1659, 1780.8313, 17.9369, 90.0000, -1, -1, -1);
	CreateDynamicVehicle(606, 151.1223, 1780.8744, 17.9369, 90.0000, -1, -1, -1);
	CreateDynamicVehicle(606, 155.0313, 1780.8533, 17.9369, 90.0000, -1, -1, -1);
	gTrailers[1] = CreateDynamicVehicle(606, 158.9580, 1780.8354, 17.9369, 90.0000, -1, -1, -1);

	// ProDrift | Drift 20 | Drift20
	CreateDynamicVehicle(562,-2072.566,-758.302,66.629,157.0,-1,-1);
	CreateDynamicVehicle(562,-2089.674,-761.198,66.629,214.0,-1,-1);
	CreateDynamicVehicle(562,-2073.362,-810.645,66.629,157.0,-1,-1);
	CreateDynamicVehicle(562,-2090.263,-810.196,66.629,214.0,-1,-1);
	CreateDynamicVehicle(562,-2089.012,-858.950,66.629,271.0,-1,-1);
	CreateDynamicVehicle(562,-2074.641,-859.664,66.629,90.0,-1,-1);
	CreateDynamicVehicle(562,-2089.074,-906.881,66.629,327.0,-1,-1);
	CreateDynamicVehicle(562,-2076.183,-905.683,66.629,56.0,-1,-1);
	CreateDynamicVehicle(562,-2089.002,-962.324,66.629,327.0,-1,-1);
	CreateDynamicVehicle(562,-2072.809,-961.176,66.629,44.0,-1,-1);

	// ForestRace | Forest Race | FRace
	CreateDynamicVehicle(411,4371.9351 + 300,-1365.5983,2.5971,270.0013,-1,-1);
	CreateDynamicVehicle(451,4372.9580 + 300,-1356.6824,2.5752,272.2976,-1,-1);
	CreateDynamicVehicle(506,4372.3232 + 300,-1345.3583,2.5744,275.7158,-1,-1);
	CreateDynamicVehicle(429,4372.2383 + 300,-1336.1959,2.5497,267.7199,145,130);
	CreateDynamicVehicle(402,4372.9458 + 300,-1326.1056,2.7016,273.3072,147,130);
	CreateDynamicVehicle(587,4373.2397 + 300,-1315.2834,2.5972,268.7005,154,156);
	CreateDynamicVehicle(562,4373.2393 + 300,-1305.2960,2.5292,269.3715,151,88);
	CreateDynamicVehicle(424,4355.6758 + 300,-1187.5287,2.6011,359.6861,130,151);

	// City
	CreateDynamicVehicle(405,2873.04736328,-3254.08447266,21.51268768,120.00000000,-1,-1); //Sentinel
	CreateDynamicVehicle(492,2842.24926758,-3236.14331055,22.70347595,330.00000000,-1,-1 );  //Greenwood
	CreateDynamicVehicle(492,2842.45483398,-3195.03369141,20.24268913,115.99633789,-1,-1); //Greenwood
	CreateDynamicVehicle(492,2785.65258789,-3133.86889648,21.99268913,5.99365234,-1,-1); //Greenwood
	CreateDynamicVehicle(492,2773.48168945,-3062.57641602,24.84785843,85.99304199,-1,-1); //Greenwood
	CreateDynamicVehicle(470,2703.18847656,-2953.38793945,23.35287094,0.00000000,-1,-1); //Patriot
	CreateDynamicVehicle(470,2659.25781250,-2865.93432617,22.94494438,210.00000000,-1,-1); //Patriot
	CreateDynamicVehicle(470,2654.39184570,-2868.64721680,21.94494438,209.99816895,-1,-1); //Patriot
	CreateDynamicVehicle(470,2670.96313477,-2859.00512695,22.20270157,209.99816895,-1,-1); //Patriot
	CreateDynamicVehicle(470,2678.25781250,-2854.70263672,22.20270157,209.99816895,-1,-1); //Patriot
	CreateDynamicVehicle(444,2695.79541016,-2866.92895508,22.59268951,60.00000000,-1,-1); //Monster
	CreateDynamicVehicle(444,2689.50732422,-2870.74536133,22.59268951,59.99633789,-1,-1); //Monster
	CreateDynamicVehicle(444,2682.21118164,-2875.34277344,22.59268951,59.99633789,-1,-1); //Monster
	CreateDynamicVehicle(447,2641.34863281,-2890.18481445,27.18493271,300.00000000,-1,-1); //Seasparrow
	CreateDynamicVehicle(447,2858.76123047,-3289.98168945,31.70795441,299.99816895,-1,-1); //Seasparrow
	CreateDynamicVehicle(400,2874.79125977,-3270.08642578,18.88381958,170.00000000,-1,-1); //Landstalker
	CreateDynamicVehicle(400,2835.40185547,-3251.93261719,39.30975342,297.99694824,-1,-1); //Landstalker
	CreateDynamicVehicle(400,2807.01196289,-3131.39184570,19.63897133,67.99316406,-1,-1); //Landstalker
	CreateDynamicVehicle(425,2540.04589844,-3910.89282227,11.25612259,308.00000000,-1,-1); //Hunter
	CreateDynamicVehicle(492,2580.49829102,-3886.17333984,7.26964760,270.00000000,-1,-1); //Greenwood
	CreateDynamicVehicle(507,2599.62426758,-3858.78295898,7.36365414,0.00000000,-1,-1); //Elegant
	CreateDynamicVehicle(527,2632.13183594,-3874.65844727,7.16058731,270.00000000,-1,-1); //Cadrona
	CreateDynamicVehicle(496,2702.33251953,-3885.35595703,7.19565916,270.00000000,-1,-1); //BlistaCompact
	CreateDynamicVehicle(436,2758.13647461,-3858.16479492,7.02267218,0.00000000,-1,-1); //Previon
	CreateDynamicVehicle(603,2756.15649414,-3939.36621094,7.19137716,180.00000000,-1,-1); //Phoenix
	CreateDynamicVehicle(555,2767.44165039,-3912.53295898,6.92505264,0.00000000,-1,-1); //Windsor
	CreateDynamicVehicle(559,2735.22631836,-3984.61816406,7.05064631,0.00000000,-1,-1); //Jester
	CreateDynamicVehicle(411,2710.85791016,-3985.71069336,8.42172432,0.00000000,-1,-1); //Infernus
	CreateDynamicVehicle(429,2684.22705078,-3985.71240234,8.17787170,0.00000000,-1,-1); //Banshee
	CreateDynamicVehicle(506,2636.00195312,-3985.29321289,7.45165014,0.00000000,-1,-1); //SuperGT
	CreateDynamicVehicle(555,2529.17895508,-3984.27197266,7.16645956,90.00000000,-1,-1); //Windsor
	CreateDynamicVehicle(401,2465.08129883,-3984.21069336,7.24383640,90.00000000,-1,-1); //Bravura
	CreateDynamicVehicle(545,2428.31445312,-3973.70385742,7.03908396,0.00000000,-1,-1); //Hustler
	CreateDynamicVehicle(545,2423.98657227,-3973.52612305,7.03908396,0.00000000,-1,-1); //Hustler
	CreateDynamicVehicle(546,2610.34155273,-3919.78344727,7.25550270,0.00000000,-1,-1); //Intruder
	CreateDynamicVehicle(417,2678.99438477,-3915.01611328,79.67578125,0.00000000,-1,-1); //Leviathan
	CreateDynamicVehicle(561,2622.87231445,-3957.07910156,7.11270189,88.00000000,-1,-1); //Stratum
	CreateDynamicVehicle(561,2633.23657227,-3809.74316406,7.27458477,89.99499512,-1,-1); //Stratum
	CreateDynamicVehicle(561,2696.27075195,-3810.10278320,7.27458477,89.99450684,-1,-1); //Stratum
	CreateDynamicVehicle(561,2777.56787109,-3792.97998047,7.06867838,81.99450684,-1,-1); //Stratum
	CreateDynamicVehicle(497,2786.42382812,-3801.84106445,7.40967846,0.00000000,-1,-1); //PoliceMaverick
	CreateDynamicVehicle(427,2776.53466797,-3823.64062500,7.39267874,90.00000000,-1,-1); //Enforcer
	CreateDynamicVehicle(427,2776.42480469,-3816.70654297,7.39267874,90.00000000,-1,-1); //Enforcer
	CreateDynamicVehicle(596,2776.57299805,-3848.57397461,6.96467829,90.00000000,-1,-1); //PoliceCar(LSPD
	CreateDynamicVehicle(596,2776.42871094,-3853.34667969,6.96467829,88.00000000,-1,-1); //PoliceCar(LSPD
	CreateDynamicVehicle(596,2776.25610352,-3858.52368164,6.96467829,88.00000000,-1,-1); //PoliceCar(LSPD
	CreateDynamicVehicle(417,2729.31005859,-3844.62988281,11.01911736,0.00000000,-1,-1); //Leviathan
	CreateDynamicVehicle(415,2760.11816406,-3756.98681641,7.02312183,0.00000000,-1,-1); //Cheetah
	CreateDynamicVehicle(415,2722.80126953,-3784.43139648,7.17723465,88.00000000,-1,-1); //Cheetah
	CreateDynamicVehicle(415,2675.79443359,-3763.92456055,6.99478626,217.99493408,-1,-1); //Cheetah
	CreateDynamicVehicle(562,2711.76855469,-3763.45922852,6.89881468,140.00000000,-1,-1); //Elegy
	CreateDynamicVehicle(562,2697.69189453,-3762.71289062,6.89881468,217.99877930,-1,-1); //Elegy
	CreateDynamicVehicle(507,2673.91479492,-3820.82055664,7.30058479,90.00000000,-1,-1); //Elegant
	CreateDynamicVehicle(507,2743.59106445,-3821.03247070,7.29945278,90.00000000,-1,-1); //Elegant
	CreateDynamicVehicle(416,2712.53271484,-3899.07397461,7.65962410,0.00000000,-1,-1); //Ambulance
	CreateDynamicVehicle(416,2706.52758789,-3898.92138672,7.63902664,0.00000000,-1,-1); //Ambulance
	CreateDynamicVehicle(408,2676.09399414,-3867.48242188,7.89526510,250.00000000,-1,-1); //Trashmaster
	CreateDynamicVehicle(403,2592.71899414,-3974.86230469,7.88870239,0.00000000,-1,-1); //Linerunner
	CreateDynamicVehicle(414,2572.40063477,-3972.23706055,7.33870220,272.00000000,-1,-1); //Mule
	CreateDynamicVehicle(414,2582.16186523,-3954.87231445,7.33870220,92.00000000,-1,-1); //Mule
	CreateDynamicVehicle(478,2572.26074219,-3955.60668945,7.26870203,270.00000000,-1,-1); //Walton
	CreateDynamicVehicle(478,2572.70410156,-3960.37792969,7.26870203,270.00000000,-1,-1); //Walton
	CreateDynamicVehicle(478,2584.75756836,-3975.50122070,7.26870203,0.00000000,-1,-1); //Walton
	CreateDynamicVehicle(470,2590.91333008,-3932.78881836,7.20354509,0.00000000,-1,-1); //Patriot
	CreateDynamicVehicle(470,2585.31933594,-3932.70288086,7.20354509,0.00000000,-1,-1); //Patriot
	CreateDynamicVehicle(470,2589.81250000,-3914.84228516,7.19578791,270.00000000,-1,-1); //Patriot
	CreateDynamicVehicle(470,2577.39331055,-3914.32202148,7.19578791,270.00000000,-1,-1); //Patriot
	CreateDynamicVehicle(455,2581.56591797,-3931.50683594,7.66353321,0.00000000,-1,-1); //Flatbed
	CreateDynamicVehicle(455,2571.93139648,-3930.82324219,7.65577602,0.00000000,-1,-1); //Flatbed

	// Circuit Race
	CreateDynamicVehicle(519, 3038.881348, -773.237915, 13.853905, 271, 6,0); //0
	CreateDynamicVehicle(519, 3040.406982, -805.228638, 12.353905, 271, 6,0); //1
	CreateDynamicVehicle(553, 3104.848633, -765.036682, 8.838832, 179, 6,0); //2
	CreateDynamicVehicle(487, 3148.828125, -829.222778, 15.275966, 179, 6,0); //3
	CreateDynamicVehicle(407, 3051.971191, -871.396912, 6.473833, 271, 6,0); //4
	CreateDynamicVehicle(407, 3052.135742, -876.868530, 6.473832, 271, 6,0); //5
	CreateDynamicVehicle(407, 3052.159668, -882.983459, 6.473832, 271, 6,0); //6
	CreateDynamicVehicle(407, 3052.405273, -888.718445, 6.473833, 271, 6,0); //7
	CreateDynamicVehicle(417, 3039.112549, -920.965942, 8.626832, 270, 6,0); //8
	CreateDynamicVehicle(519, 3141.927490, -864.561951, 12.353905, 89, 6,0); //9
	CreateDynamicVehicle(502, 3025.483643, -843.168152, 3.665159, 179, 6,0); //0
	CreateDynamicVehicle(494, 3029.155762, -843.055725, 3.665160, 179, 6,0); //1
	CreateDynamicVehicle(502, 3032.971191, -842.720459, 3.665159, 179, 6,0); //2
	CreateDynamicVehicle(415, 3036.816650, -842.507385, 3.665159, 179, 6,0); //3
	CreateDynamicVehicle(451, 3040.500244, -842.591064, 3.665159, 179, 6,0); //4
	CreateDynamicVehicle(494, 3044.495605, -842.400269, 3.665159, 179, 6,0); //5
	CreateDynamicVehicle(559, 3048.847168, -842.325989, 3.665159, 179, 6,0); //6
	CreateDynamicVehicle(451, 3127.453369, -824.270386, 3.665159, 89, 6,0); //7
	CreateDynamicVehicle(477, 3127.275146, -828.582825, 3.665159, 89, 6,0); //8
	CreateDynamicVehicle(415, 3127.122070, -833.223938, 3.665159, 89, 6,0); //9
	CreateDynamicVehicle(451, 3127.303223, -837.593994, 3.665159, 89, 6,0); //10
	CreateDynamicVehicle(477, 3085.591553, -761.967468, 3.665159, 179, 6,0); //11
	CreateDynamicVehicle(559, 3085.545166, -769.803772, 3.665159, 179, 6,0); //12
	CreateDynamicVehicle(559, 3036.257080, -865.537964, 3.665159, 360, 6,0); //13
	CreateDynamicVehicle(477, 3032.731201, -865.527832, 3.665159, 360, 6,0); //14
	CreateDynamicVehicle(560, 3028.838867, -865.766113, 3.665158, 360, 6,0); //15
	CreateDynamicVehicle(560, 3024.265869, -866.033386, 3.665159, 360, 6,0); //16
	CreateDynamicVehicle(560, 3044.469727, -865.559082, 3.665159, 360, 6,0); //17

	// Dillimore rendõrség kocsik by Twister
	CreateDynamicVehicle(427, 631.7821, -609.5924, 16.2909, 0.0000, 0, 1);
	CreateDynamicVehicle(427, 635.6561, -609.5933, 16.2909, 0.0000, 0, 1);
	CreateDynamicVehicle(528, 640.1727, -610.1948, 16.2525, 0.0000, 0, 1);
	CreateDynamicVehicle(490, 627.4813, -609.7735, 17.1122, 0.0000, 0, 1);
	CreateDynamicVehicle(599, 611.0281, -589.1349, 17.2910, 270.0000, 0, 1);
	CreateDynamicVehicle(599, 611.0043, -592.0890, 17.2910, 270.0000, 0, 1);
	CreateDynamicVehicle(596, 610.0220, -609.3736, 16.8509, 0.0000, 0, 1);
	CreateDynamicVehicle(597, 613.4397, -609.2318, 16.9366, 0.0000, 0, 1);
	CreateDynamicVehicle(598, 611.5979, -596.6547, 17.0301, 270.8959, 0, 1);
	CreateDynamicVehicle(523, 621.1948, -611.9833, 16.7072, 0.0000, 0, 1);
	CreateDynamicVehicle(523, 623.8768, -611.8422, 16.7072, 0.0000, 0, 1);
	CreateDynamicVehicle(523, 622.5255, -611.9133, 16.7072, 0.0000, 0, 1);
	CreateDynamicVehicle(596, 617.0712, -584.5668, 17.0351, 270.0000, 0, 1);
	CreateDynamicVehicle(596, 628.8320, -541.5841, 17.0351, 270.0000, 0, 1);
	CreateDynamicVehicle(596, 623.6266, -584.6019, 17.0351, 270.0000, 0, 1);
	CreateDynamicVehicle(596, 660.3944, -619.4186, 16.3500, 0.0000, 0, 1);
	CreateDynamicVehicle(596, 669.7783, -619.4186, 16.3500, 0.0000, 0, 1);
	CreateDynamicVehicle(596, 666.8259, -619.4186, 16.3500, 0.0000, 0, 1);
	CreateDynamicVehicle(596, 663.6987, -619.4186, 16.3500, 0.0000, 0, 1);
    CreateDynamicVehicle(403, 666.6327, -580.5108, 16.9323, 90.0000, -237, 1);
/*
	// Bozsi Pizza
	CreateDynamicVehicle(414, 673.8744, -447.3936, 16.3403, 90.0000, -6, -3);
	CreateDynamicVehicle(448, 682.8351, -439.1155, 15.8488, 150.0000, -6, -3);
	CreateDynamicVehicle(448, 688.5707, -439.1396, 15.8488, 150.0000, -6, -3);
	CreateDynamicVehicle(448, 685.6694, -439.1412, 15.8488, 150.0000, -6, -3);
	CreateDynamicVehicle(448, 684.2491, -439.1344, 15.8488, 150.0000, -6, -3);
	CreateDynamicVehicle(448, 687.0696, -439.1295, 15.8488, 150.0000, -6, -3);
*/
	// Trackmania 2
	CreateDynamicVehicle(411,-1914.40002441,6623.29980469,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.30004883,6629.79980469,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.40002441,6636.20019531,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.30004883,6642.39990234,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.30004883,6649.00000000,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.19995117,6655.39990234,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.30004883,6661.60009766,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.30004883,6668.20019531,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.30004883,6674.50000000,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1914.40002441,6617.00000000,11.60000038,90.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.69995117,6613.89990234,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.59997559,6620.29980469,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.80004883,6626.50000000,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.59997559,6633.20019531,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.59997559,6639.20019531,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.40002441,6645.70019531,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.30004883,6652.10009766,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.00000000,6658.50000000,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.00000000,6665.10009766,11.60000038,270.0,-1,-1); // Infernus
	CreateDynamicVehicle(411,-1943.00000000,6671.29980469,11.60000038,270.0,-1,-1); // Infernus

	// ReadyForWar-HQ
/*	CreateDynamicVehicle(411, 630.599975, 884.200012, -43.400001, 0.000000, 1, 1);
	CreateDynamicVehicle(411, 633.099975, 884.200012, -43.400001, 0.000000, 64, 1);
	CreateDynamicVehicle(562, 635.799987, 883.700012, -43.099998, 0.000000, 36, 1);
	CreateDynamicVehicle(560, 638.400024, 884.099975, -43.200000, 0.000000, 33, 0);
	CreateDynamicVehicle(560, 641.400024, 883.500000, -43.099998, 0.000000, 56, 29);
	CreateDynamicVehicle(522, 643.799987, 880.799987, -43.000000, 0.000000, 39, 106);
	*/
/*

	CreateDynamicVehicle(562, 1599.699951, 1290.599975, 10.600000, 270.000000, 17, 1);
	CreateDynamicVehicle(522, 1603.800048, 1292.199951, 10.500000, 0.000000, 3, 3);
	CreateDynamicVehicle(522, 1604.800048, 1292.199951, 10.500000, 0.000000, 36, 105);
	CreateDynamicVehicle(522, 1605.800048, 1292.199951, 10.500000, 0.000000, 36, 105);
	CreateDynamicVehicle(522, 1606.699951, 1292.300048, 10.500000, 0.000000, 36, 105);
	CreateDynamicVehicle(522, 1607.599975, 1292.199951, 10.500000, 0.000000, 36, 105);
	CreateDynamicVehicle(560, 1594.400024, 1290.500000, 10.600000, 270.000000, 56, 29);
	CreateDynamicVehicle(411, 1588.300048, 1290.500000, 10.399999, 270.000000, 106, 1);
	CreateDynamicVehicle(411, 630.599975, 884.200012, -43.400001, 0.000000, 1, 1);
	CreateDynamicVehicle(411, 633.099975, 884.200012, -43.400001, 0.000000, 64, 1);
	CreateDynamicVehicle(562, 635.799987, 883.700012, -43.099998, 0.000000, 36, 1);
	CreateDynamicVehicle(560, 638.400024, 884.099975, -43.200000, 0.000000, 33, 0);
	CreateDynamicVehicle(560, 641.400024, 883.500000, -43.099998, 0.000000, 56, 29);
	CreateDynamicVehicle(522, 643.799987, 880.799987, -43.000000, 0.000000, 39, 106);
*/

	// Fogyatékos norbi kocsijai
	CreateDynamicVehicle(560,-1115.8171,-1624.4000,76.0806,275.0566,144,179); // klánkocsi1
	CreateDynamicVehicle(451,-1115.5558,-1617.3137,76.0738,267.7398,170,250); // klánkocsi2
	CreateDynamicVehicle(559,-1115.9949,-1621.3002,76.0303,267.6038,1,1); // Klánkocsi3
	CreateDynamicVehicle(522,-1102.2358,-1633.1737,75.9468,270.1587,223,213); // motor1
	CreateDynamicVehicle(521,-1102.9205,-1631.6173,75.9458,270.7281,134,156); // motor2
	CreateDynamicVehicle(461,-1103.2881,-1629.8368,75.9532,269.1634,244,250); // motor3
	CreateDynamicVehicle(468,-1109.1046,-1630.6390,76.0419,270.8577,214,53); // motor4
	CreateDynamicVehicle(586,-1109.9316,-1632.4948,75.8939,265.5285,179,110); // motor5
	CreateDynamicVehicle(487,-1073.6925,-1630.3496,76.5437,269.8067,8,27); // heli1
	CreateDynamicVehicle(563,-1070.5728,-1619.3456,77.1086,261.2956,199,202); // heli2
	CreateDynamicVehicle(497,-1058.1598,-1625.6400,76.5430,87.1431,238,159); // heli3
	CreateDynamicVehicle(513,-1114.7292,-1652.9351,76.9210,285.7229,82,152); // repcsi1
	CreateDynamicVehicle(593,-1107.8405,-1660.3984,76.8274,290.3303,254,82); // repcsi2
	CreateDynamicVehicle(576,-1100.6750,-1673.8076,75.9191,358.4469,59,169); // klánkocsi4
	CreateDynamicVehicle(518,-1105.5417,-1675.1190,76.0445,354.4825,73,177); // klánkocsi5
	CreateDynamicVehicle(431,-1079.5233,-1666.8961,76.4734,3.6245,193,246); // busz1
	CreateDynamicVehicle(495,-1122.0729,-1675.7094,76.7158,354.7118,247,64); // klánkocsi 6
	CreateDynamicVehicle(567,-1125.6273,-1676.2573,76.2345,357.8047,226,45); // klánkocsi 7

	// Tewe BF dm
	CreateDynamicVehicle(487,-2122.1877,2686.2751,161.0316,358.0142,26,14); // Helicopter
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4766.299805, 2977.300049, 52.799999, 176.000000, 40, 44, 60), 18); // vehicle (Mesa) (1)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4162.399902, 2658.800049, 52.799999, 245.998993, 123, 102, 60), 18); // vehicle (Mesa) (2)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4160.600098, 2648.300049, 52.799999, 261.994995, 123, 102, 60), 18); // vehicle (Mesa) (3)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4156.500000, 2613.500000, 52.799999, 265.990997, 123, 102, 60), 18); // vehicle (Mesa) (4)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4150.899902, 2640.199951, 52.799999, 253.998993, 123, 102, 60), 18); // vehicle (Mesa) (5)
	SetVehicleVirtualWorld(CreateDynamicVehicle(433, 4177.299805, 2680.399902, 53.000000, 212.000000, 43, 0, 60), 18); // vehicle (Barracks) (1)
	SetVehicleVirtualWorld(CreateDynamicVehicle(433, 4172.299805, 2676.600098, 53.000000, 211.998001, 43, 0, 60), 18); // vehicle (Barracks) (2)
	SetVehicleVirtualWorld(CreateDynamicVehicle(433, 4166.500000, 2673.699951, 53.000000, 211.998001, 43, 0, 60), 18); // vehicle (Barracks) (3)
	//SetVehicleVirtualWorld(CreateDynamicVehicle(432, 4705.700195, 3000.100098, 52.700001, 176.000000, 43, 0, 60), 18); // vehicle (Rhino) (1)
	SetVehicleVirtualWorld(CreateDynamicVehicle(468, 4200.700195, 2602.800049, 52.200001, 350.000000, 123, 6, 60), 18); // vehicle (Sanchez) (1)
	//SetVehicleVirtualWorld(CreateDynamicVehicle(432, 4149.299805, 2632.199951, 52.500000, 265.996002, 43, 0, 60), 18); // vehicle (Rhino) (2)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4193.500000, 2677.899902, 52.799999, 205.998993, 123, 102, 60), 18); // vehicle (Mesa) (6)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4756.100098, 2977.800049, 52.799999, 175.996002, 40, 44, 60), 18); // vehicle (Mesa) (7)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4745.899902, 2978.199951, 52.799999, 175.996002, 40, 44, 60), 18); // vehicle (Mesa) (8)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4729.700195, 2979.000000, 52.799999, 175.996002, 40, 44, 60), 18); // vehicle (Mesa) (9)
	SetVehicleVirtualWorld(CreateDynamicVehicle(500, 4718.200195, 2979.500000, 52.799999, 175.996002, 40, 44, 60), 18); // vehicle (Mesa) (10)
	SetVehicleVirtualWorld(CreateDynamicVehicle(468, 4770.700195, 2977.000000, 52.400002, 178.000000, 0, 53, 60), 18); // vehicle (Sanchez) (2)
	SetVehicleVirtualWorld(CreateDynamicVehicle(470, 4691.799805, 2978.699951, 52.799999, 180.000000, 43, 0, 60), 18); // vehicle (Patriot) (1)
	SetVehicleVirtualWorld(CreateDynamicVehicle(470, 4741.399902, 2977.100098, 52.799999, 180.000000, 43, 0, 60), 18); // vehicle (Patriot) (2)
	/*
	// HQ
	CreateDynamicVehicle(492, 2512.181152, -1668.095703, 13.235946, 0.000000, -1, -1);
	CreateDynamicVehicle(412, 2481.629882, -1694.682617, 13.470276, 358.000000, -1, -1);
	CreateDynamicVehicle(567, 2473.287841, -1696.132690, 13.493833, 0.000000, -1, -1);
	CreateDynamicVehicle(474, 2437.535888, -1673.872924, 13.539146, 2.000000, -1, -1);
	CreateDynamicVehicle(461, 2443.619384, -1643.139038, 13.110137, 177.999694, -1, -1);
	CreateDynamicVehicle(581, 2483.906738, -1650.304199, 13.164447, 88.000000, -1, -1);
	CreateDynamicVehicle(487, 2529.733398, -1677.855468, 20.195224, 90.000000, -1, -1);
	CreateDynamicVehicle(536, 1793.150390, -2128.873046, 13.396875, 0.000000, -1, -1);
	CreateDynamicVehicle(518, 1773.075195, -2097.531250, 13.341682, 180.000000, -1, -1);
	CreateDynamicVehicle(567, 1799.997070, -2105.919921, 13.525217, 270.000000, -1, -1);
	CreateDynamicVehicle(547, 1758.790039, -2120.087890, 13.394350, 271.999511, -1, -1);
	CreateDynamicVehicle(463, 1803.720703, -2120.304687, 13.171349, 271.999511, -1, -1);
	CreateDynamicVehicle(521, 1772.521484, -2128.735351, 13.203888, 0.000000, -1, -1);
	CreateDynamicVehicle(487, 1778.488891, -2145.076171, 13.811875, 0.000000, -1, -1);
	CreateDynamicVehicle(523, 1602.779785, -1606.942504, 13.164912, 92.000000, -1, -1);
	CreateDynamicVehicle(523, 1603.236206, -1611.986206, 13.166952, 91.999511, -1, -1);
	CreateDynamicVehicle(546, 1964.604370, -1191.752563, 25.803049, 4.000000, -1, -1);
	CreateDynamicVehicle(421, 1974.772705, -1168.273803, 26.105039, 357.999023, -1, -1);
	CreateDynamicVehicle(542, 1964.394775, -1162.054077, 25.917724, 0.000000, -1, -1);
	CreateDynamicVehicle(474, 1974.326171, -1178.201293, 25.997188, 0.000000, -1, -1);
	CreateDynamicVehicle(461, 1964.203247, -1178.445312, 25.747409, 0.000000, -1, -1);
	CreateDynamicVehicle(521, 1974.298828, -1189.022827, 25.438198, 0.000000, -1, -1);
	CreateDynamicVehicle(487, 1969.796752, -1184.575683, 26.104619, 0.000000, -1, -1);
	CreateDynamicVehicle(463, 2216.980712, -1157.501831, 25.343563, 274.000000, -1, -1);
	CreateDynamicVehicle(474, 2206.100585, -1157.341796, 25.634756, 270.000000, -1, -1);
	CreateDynamicVehicle(480, 2228.593017, -1159.748779, 25.642093, 90.000000, -1, -1);
	CreateDynamicVehicle(566, 2228.128417, -1166.632324, 25.646623, 90.000000, -1, -1);
	CreateDynamicVehicle(521, 2228.202392, -1163.404663, 25.422851, 84.000000, -1, -1);
	CreateDynamicVehicle(550, 2217.078613, -1161.978759, 25.649343, 272.000000, -1, -1);
	CreateDynamicVehicle(487, 2216.060791, -1166.392822, 25.991561, 270.000000, -1, -1);
	CreateDynamicVehicle(470, 904.378540, -1235.950927, 16.535554, 0.000000, -1, -1);
	CreateDynamicVehicle(470, 901.503906, -1206.285522, 17.086574, 269.999511, -1, -1);
	CreateDynamicVehicle(487, 885.422241, -1234.184692, 16.587362, 272.000000, -1, -1);
	CreateDynamicVehicle(433, 885.422241, 919.067382, -1199.641235, 0.000000, -1, -1);
	CreateDynamicVehicle(433, 885.422241, 884.461181, -1204.099487, 0.000000, -1, -1);
	CreateDynamicVehicle(463, 885.422241, 908.316223, -1234.257568, 0.000000, -1, -1);
	CreateDynamicVehicle(462, 885.422241, 915.309387, -1198.978271, 0.000000, -1, -1);
	CreateDynamicVehicle(515, 1919.240112, -1792.082031, 13.584171, 270.000000, -1, -1);
	CreateDynamicVehicle(514, 1953.848144, -1767.128662, 13.917284, 0.000000, -1, -1);
	CreateDynamicVehicle(403, 1941.967285, -1784.771118, 14.046875, 270.000000, -1, -1);
*/
	CreateDynamicVehicle(500, 4767.899902, 2977.399902, 52.799999, 175.996002, 40, 44, 60); // vehicle (Mesa) (1)
	CreateDynamicVehicle(500, 4162.399902, 2658.800049, 52.799999, 245.998993, 123, 102, 60); // vehicle (Mesa) (2)
	CreateDynamicVehicle(500, 4160.600098, 2648.300049, 52.799999, 261.994995, 123, 102, 60); // vehicle (Mesa) (3)
	CreateDynamicVehicle(500, 4156.500000, 2613.500000, 52.799999, 265.990997, 123, 102, 60); // vehicle (Mesa) (4)
	CreateDynamicVehicle(500, 4150.899902, 2640.199951, 52.799999, 253.998993, 123, 102, 60); // vehicle (Mesa) (5)
	CreateDynamicVehicle(433, 4692.200195, 2978.300049, 53.000000, 177.998001, 43, 0, 60); // vehicle (Barracks) (3)
//	CreateDynamicVehicle(432, 4705.700195, 3000.100098, 52.700001, 176.000000, 43, 0, 60); // vehicle (Rhino) (1)
	CreateDynamicVehicle(468, 4200.700195, 2602.800049, 52.200001, 350.000000, 123, 6, 60); // vehicle (Sanchez) (1)
//	CreateDynamicVehicle(432, 4149.299805, 2632.199951, 52.500000, 265.996002, 43, 0, 60); // vehicle (Rhino) (2)
	CreateDynamicVehicle(500, 4193.500000, 2677.899902, 52.799999, 205.998993, 123, 102, 60); // vehicle (Mesa) (6)
	CreateDynamicVehicle(500, 4756.100098, 2977.800049, 52.799999, 175.996002, 40, 44, 60); // vehicle (Mesa) (7)
	CreateDynamicVehicle(500, 4743.200195, 2978.399902, 52.799999, 175.996002, 40, 44, 60); // vehicle (Mesa) (8)
	CreateDynamicVehicle(500, 4729.700195, 2979.000000, 52.799999, 175.996002, 40, 44, 60); // vehicle (Mesa) (9)
	CreateDynamicVehicle(500, 4718.200195, 2979.500000, 52.799999, 175.996002, 40, 44, 60); // vehicle (Mesa) (10)
	CreateDynamicVehicle(468, 4754.600098, 2907.399902, 52.400002, 63.994999, 0, 53, 60); // vehicle (Sanchez) (2)
	CreateDynamicVehicle(470, 4169.000000, 2673.300049, 52.400002, 210.000000, 43, 0, 60); // vehicle (Patriot) (2)
	CreateDynamicVehicle(470, 4176.700195, 2677.500000, 52.400002, 209.998001, 43, 0, 60); // vehicle (Patriot) (2)
	CreateDynamicVehicle(433, 4680.899902, 2965.100098, 53.000000, 247.994995, 43, 0, 60); // vehicle (Barracks) (3)
	CreateDynamicVehicle(433, 4676.899902, 2950.399902, 53.000000, 275.993988, 43, 0, 60); // vehicle (Barracks) (3)
	new vid = CreateDynamicVehicle(409, 1108.300049, -642.200012, 112.400002, 77.500000, 1, 1, 60);
	AddDynamicVehicleComponent(vid, 1078);
	AddDynamicVehicleComponent(vid, 1010);
	vid = CreateDynamicVehicle(487, 1096.099976, -654.400024, 121.500000, 90.000000, 1, 6, 60);
	ChangeVehiclePaintjob(vid, 1);
	vid = CreateDynamicVehicle(559, 1087.800049, -640.900024, 112.900002, 270.000000, 86, 0, 60);
	ChangeVehiclePaintjob(vid, 1);
	AddDynamicVehicleComponent(vid, 1160);
	AddDynamicVehicleComponent(vid, 1068);
	AddDynamicVehicleComponent(vid, 1158);
	AddDynamicVehicleComponent(vid, 1080);
	AddDynamicVehicleComponent(vid, 1010);
	AddDynamicVehicleComponent(vid, 1159);
	AddDynamicVehicleComponent(vid, 1070);
	AddDynamicVehicleComponent(vid, 1065);
	vid = CreateDynamicVehicle(565, 1087.400024, -635.099976, 112.800003, 90.000000, 3, 1, 60);
	ChangeVehiclePaintjob(vid, 1);
	AddDynamicVehicleComponent(vid, 1152);
	AddDynamicVehicleComponent(vid, 1054);
	AddDynamicVehicleComponent(vid, 1049);
	AddDynamicVehicleComponent(vid, 1073);
	AddDynamicVehicleComponent(vid, 1010);
	AddDynamicVehicleComponent(vid, 1048);
	AddDynamicVehicleComponent(vid, 1150);
	AddDynamicVehicleComponent(vid, 1046);

	// Buzigyerek mapja
	CreateDynamicVehicle(506, 282.399994, -1159.699951, 80.699997, 222.000000, 7, 7, 60); // vehicle (Super GT) (1)
	CreateDynamicVehicle(429, 286.700012, -1155.800049, 80.699997, 224.000000, 2, 1, 60); // vehicle (Banshee) (1)
	CreateDynamicVehicle(434, 292.100006, -1151.000000, 81.099998, 188.000000, 2, 2, 60); // vehicle (Hotknife) (1)
	CreateDynamicVehicle(522, 275.399994, -1161.400024, 80.599998, 226.000000, 86, 0, 60); // vehicle (NRG-500) (1)
	CreateDynamicVehicle(409, 286.399994, -1173.300049, 80.800003, 224.000000, 0, 1, 60); // vehicle (Stretch) (1)
	CreateDynamicVehicle(579, 301.399994, -1181.599976, 81.000000, 40.000000, 0, 11, 60); // vehicle (Huntley) (1)

	// ASDv3
	CreateDynamicVehicle(411, 247.600006, -1356.699951, 52.900002, 304.000000, 3, 1, 60); // vehicle (Infernus) (1)
	CreateDynamicVehicle(562, 250.300003, -1360.000000, 52.900002, 306.000000, 0, 1, 60); // vehicle (Elegy) (1)

	// DoLoRKeroV1
	CreateDynamicVehicle(405, 1445.500000, 786.500000, 10.800000, 0.000000, 40, 1, 60); // vehicle (Sentinel) (1)
	CreateDynamicVehicle(421, 1448.800049, 786.599976, 10.800000, 0.000000, 30, 1, 60); // vehicle (Washington) (1)
	CreateDynamicVehicle(426, 1451.800049, 787.000000, 10.600000, 0.000000, 37, 37, 60); // vehicle (Premier) (1)
	CreateDynamicVehicle(445, 1455.000000, 786.799988, 10.800000, 0.000000, 43, 43, 60); // vehicle (Admiral) (1)
	CreateDynamicVehicle(467, 1458.099976, 786.700012, 10.700000, 0.000000, 22, 1, 60); // vehicle (Oceanic) (1)
	CreateDynamicVehicle(550, 1461.400024, 786.599976, 10.700000, 0.000000, 10, 10, 60); // vehicle (Sunrise) (1)
	CreateDynamicVehicle(480, 1464.599976, 786.599976, 10.700000, 0.000000, 53, 53, 60); // vehicle (Comet) (1)
	CreateDynamicVehicle(477, 1467.599976, 786.500000, 10.700000, 0.000000, 75, 1, 60); // vehicle (ZR-350) (1)
	CreateDynamicVehicle(411, 1470.800049, 786.400024, 10.600000, 0.000000, 126, 1, 60); // vehicle (Infernus) (1)
	CreateDynamicVehicle(415, 1473.800049, 786.500000, 10.700000, 0.000000, 62, 1, 60); // vehicle (Cheetah) (1)
	CreateDynamicVehicle(429, 1477.400024, 786.799988, 10.600000, 0.000000, 2, 1, 60); // vehicle (Banshee) (1)
	CreateDynamicVehicle(451, 1480.699951, 787.099976, 10.600000, 0.000000, 36, 36, 60); // vehicle (Turismo) (1)
	CreateDynamicVehicle(562, 1483.599976, 786.500000, 10.600000, 0.000000, 113, 1, 60); // vehicle (Elegy) (1)
	CreateDynamicVehicle(496, 1486.599976, 786.799988, 10.600000, 0.000000, 9, 14, 60); // vehicle (Blista Compact) (1)
	CreateDynamicVehicle(468, 1496.400024, 731.000000, 10.600000, 192.000000, 6, 6, 60); // vehicle (Sanchez) (1)
	CreateDynamicVehicle(463, 1498.199951, 731.299988, 10.400000, 206.000000, 19, 19, 60); // vehicle (Freeway) (1)
	CreateDynamicVehicle(521, 1499.400024, 731.299988, 10.500000, 0.000000, 118, 118, 60); // vehicle (FCR-900) (1)
//	CreateDynamicVehicle(432, 1520.099976, 736.500000, 11.100000, 170.000000, 43, 0, 60); // vehicle (Rhino) (1)
	CreateDynamicVehicle(556, 1530.000000, 736.400024, 10.000000, 174.000000, 1, 1, 60); // vehicle (Monster 2) (1)
	CreateDynamicVehicle(522, 1501.000000, 731.400024, 10.500000, 0.000000, 36, 105, 60); // vehicle (NRG-500) (1)
	CreateDynamicVehicle(434, 1505.599976, 730.299988, 11.000000, 0.000000, 53, 53, 60); // vehicle (Hotknife) (1)
	vid = CreateDynamicVehicle(562, 1494.900024, 725.599976, 10.600000, 161.998993, 123, 1, 60);
	AddDynamicVehicleComponent(vid, 1146);
	AddDynamicVehicleComponent(vid, 1039);
	AddDynamicVehicleComponent(vid, 1038);
	AddDynamicVehicleComponent(vid, 1010);
	AddDynamicVehicleComponent(vid, 1087);
	AddDynamicVehicleComponent(vid, 1080);
	AddDynamicVehicleComponent(vid, 1037);
	AddDynamicVehicleComponent(vid, 1148);
	AddDynamicVehicleComponent(vid, 1172);
	CreateDynamicVehicle(579, 1484.400024, 728.500000, 10.900000, 177.998993, 0, 0, 60); // vehicle (Huntley) (2)
	CreateDynamicVehicle(469, 1491.400024, 741.500000, 22.100000, 182.000000, 1, 3, 60); // vehicle (Sparrow) (1)

	// Befejezetthaz - AwesomeFM
	vid = CreateDynamicVehicle(522, 498.799988, -1086.099976, 81.900002, 340.000000, 43, 106, 60);
	AddDynamicVehicleComponent(vid, 1085);
	CreateDynamicVehicle(497, 491.700012, -1100.400024, 86.699997, 0.000000, 40, 3, 60); // vehicle (Police Maverick) (1)
	vid = CreateDynamicVehicle(409, 477.899994, -1087.699951, 82.400002, 0.000000, 1, 1, 60);
	ChangeVehiclePaintjob(vid, 2);
	AddDynamicVehicleComponent(vid, 1085);

	// Gangster
	CreateDynamicVehicle(580, 215.699997, -1392.900024, 51.500000, 66.000000, 53, 53, 60); // vehicle (Stafford) (1)
	CreateDynamicVehicle(492, 222.800003, -1397.000000, 51.500000, 60.000000, 77, 26, 60); // vehicle (Greenwood) (1)
	CreateDynamicVehicle(506, 230.500000, -1401.599976, 51.299999, 56.000000, 3, 3, 60); // vehicle (Super GT) (1)
	CreateDynamicVehicle(579, 235.300003, -1405.699951, 51.700001, 48.000000, 10, 10, 60); // vehicle (Huntley) (1)

	// Buzinorbi
	CreateDynamicVehicle(566, 2405.600098, -1470.099976, 23.900000, 270.000000, 101, 22, 60); // vehicle (Tahoma) (1)
	CreateDynamicVehicle(566, 2391.199951, -1470.000000, 23.900000, 270.000000, 101, 22, 60); // vehicle (Tahoma) (3)
	CreateDynamicVehicle(517, 2390.899902, -1477.599976, 23.799999, 270.000000, 53, 101, 60); // vehicle (Majestic) (1)
	CreateDynamicVehicle(517, 2412.100586, -1477.700195, 23.799999, 270.000000, 53, 101, 60); // vehicle (Majestic) (2)
	CreateDynamicVehicle(517, 2405.100098, -1477.699951, 23.799999, 270.000000, 53, 101, 60); // vehicle (Majestic) (3)
	CreateDynamicVehicle(517, 2398.100098, -1477.699951, 23.799999, 270.000000, 53, 101, 60); // vehicle (Majestic) (4)
	CreateDynamicVehicle(566, 2398.500000, -1470.099609, 23.900000, 270.000000, 101, 22, 60); // vehicle (Tahoma) (4)

	// Oscar house
	CreateDynamicVehicle(487, -2653.000000, 848.000000, 73.300003, 0.000000, 26, 14, 60); // vehicle (Maverick) (1)
	CreateDynamicVehicle(522, -2657.699951, 852.000000, 63.700001, 0.000000, 39, 106, 60); // vehicle (NRG-500) (1)
	CreateDynamicVehicle(572, -2639.899902, 855.799988, 63.599998, 0.000000, 25, 1, 60); // vehicle (Mower) (1)
	CreateDynamicVehicle(471, -2641.800049, 855.900024, 63.599998, 0.000000, 103, 111, 60); // vehicle (Quadbike) (1)

	// Fórumrú
	CreateDynamicVehicle(447,756.7999900,-1259.0000000,13.7000000,270.0000000,32,32); //Seasparrow
	CreateDynamicVehicle(411,686.7999900,-1263.0000000,13.4000000,90.0000000,-1,-1); //Infernus
	CreateDynamicVehicle(522,684.9000200,-1283.5000000,13.2000000,68.0000000,1,-1); //NRG-500
	CreateDynamicVehicle(522,684.9000200,-1285.3000000,13.2000000,68.0000000,-1,1); //NRG-500
	CreateDynamicVehicle(457,733.2999900,-1260.4000000,13.3000000,270.0000000,254,254); //Caddy
	CreateDynamicVehicle(457,733.2000100,-1292.5000000,13.3000000,270.0000000,235,235); //Caddy
	CreateDynamicVehicle(510,689.5000000,-1235.5000000,15.8000000,294.0000000,215,142); //Mountain Bike

	// AwesomeFM
	vid = CreateDynamicVehicle(560, 166.000000, -1335.099976, 69.720001, 180.000000, 93, 0, 60);
	ChangeVehiclePaintjob(vid, 0);
	AddDynamicVehicleComponent(vid, 1169);
	AddDynamicVehicleComponent(vid, 1033);
	AddDynamicVehicleComponent(vid, 1139);
	AddDynamicVehicleComponent(vid, 1080);
	AddDynamicVehicleComponent(vid, 1010);
	AddDynamicVehicleComponent(vid, 1087);
	AddDynamicVehicleComponent(vid, 1030);
	AddDynamicVehicleComponent(vid, 1028);
	AddDynamicVehicleComponent(vid, 1140);
	vid = CreateDynamicVehicle(451, 172.100006, -1335.300049, 69.800003, 180.000000, 1, 1, 60);
	ChangeVehiclePaintjob(vid, 0);
	AddDynamicVehicleComponent(vid, 1010);
	AddDynamicVehicleComponent(vid, 1087);
	AddDynamicVehicleComponent(vid, 1085);
	CreateDynamicVehicle(497, 178.300003, -1314.500000, 80.900002, 180.000000, 79, 0, 60);
	CreateDynamicVehicle(522, 174.100006, -1347.699951, 69.050003, 160.000000, 1, 3, 60); // vehicle (NRG-500) (1)

	// Stunt Island
	for(new i; i != 6; i++)
	{
		SetDynamicVehicleVirtualWorld(CreateDynamicVehicle(411, 89.45, 3445.0 + (i * 6.0), 5.05, 90.0, -1, -1, 30), 333);
	}

	// Awemap
	CreateDynamicVehicle(495,1345.2000000,-1121.5000000,24.3000000,180.0000000,255,255); //Sandking
	CreateDynamicVehicle(495,1340.8000000,-1121.7000000,24.3000000,180.0000000,-1,-1); //Sandking
	CreateDynamicVehicle(495,1340.0000000,-1165.6000000,24.3000000,0.0000000,10,-1); //Sandking
	CreateDynamicVehicle(495,1344.9000000,-1165.6000000,24.3000000,0.0000000,254,27); //Sandking
	CreateDynamicVehicle(495,964.7999900,-1122.5000000,24.2000000,180.0000000,-1,198); //Sandking
	CreateDynamicVehicle(495,960.5000000,-1122.5000000,24.2000000,180.0000000,47,223); //Sandking
	CreateDynamicVehicle(495,960.2000100,-1114.0000000,24.2000000,180.0000000,247,220); //Sandking
	CreateDynamicVehicle(495,964.7999900,-1113.8000000,24.2000000,180.0000000,4,-1); //Sandking
	
	//Area 51
	CreateDynamicVehicle(433, 221.5428, 1915.6581, 18.0061, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(470, 208.4658, 1917.0883, 17.3674, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(470, 208.4658, 1917.0883, 17.3674, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(433, 213.6546, 1915.1051, 18.0061, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(433, 163.9719, 1902.8855, 18.9658, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(470, 302.0357, 1796.3264, 17.2889, 267.0000, -1, -1, 100);
	CreateDynamicVehicle(470, 302.4106, 1806.3849, 17.3273, 267.0000, -1, -1, 100);
	CreateDynamicVehicle(468, 175.1414, 1925.9158, 17.6795, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(468, 177.8661, 1926.1030, 17.6795, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(468, 180.3357, 1926.3142, 17.6795, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(432, 195.5113, 1883.4222, 17.5186, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(432, 172.7231, 1805.4960, 17.4084, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(432, 244.6587, 1984.7236, 17.5999, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(432, 231.7755, 1986.7382, 17.5999, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(432, 222.5472, 1985.9221, 17.5999, 0.0000, -1, -1, 100);
	CreateDynamicVehicle(432, 211.6786, 1985.7355, 17.5999, 0.0000, -1, -1, 100);
	
	
}
