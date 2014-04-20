JawaTradersScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("JawaTradersScreenPlay", true)

function JawaTradersScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
	end
end

function JawaTradersScreenPlay:spawnMobiles()

	-- Canopy
	spawnMobile("tatooine", "jawa_poi", 600, -6184.270, 7.253, 1852.560, 154.785, 0)
	spawnMobile("tatooine", "jawa_protector_poi", 600, -6183.420, 7.123, 1848.440, 29.248, 0)
	
	-- Canopy
	spawnMobile("tatooine", "jawa_poi", 600, -6171.940, 7.331, 1862.540, -110.813, 0)
	spawnMobile("tatooine", "jawa_engineer_poi", 600, -6174.910, 7.386, 1862.260, 92.763, 0)
	spawnMobile("tatooine", "moisture_farmer", 600, -6169.650, 7.167, 1860.390, 58.128, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6166.610, 7.171, 1861.790, -119.299, 0)
	
	-- Canopy
	spawnMobile("tatooine", "jawa_engineer_poi", 600, -6157.420, 6.743, 1856.570, 147.092, 0)
	spawnMobile("tatooine", "eg6_power_droid", 600, -6156.360, 6.590, 1852.880, 1.025, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6161.590, 6.750, 1854.700, 51.543, 0)
	
	-- Canopy
	spawnMobile("tatooine", "jawa_poi", 600, -6137.470, 6.150, 1826.010, 27.736, 0)
	spawnMobile("tatooine", "commoner_tatooine", 600, -6135.190, 6.113, 1829.220, -154.897, 0)
	
	-- Canopy
	spawnMobile("tatooine", "jawa_poi", 600, -6126.570, 6.175, 1850.980, -138.479, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6125.800, 6.128, 1848.700, 56.274, 0)
	spawnMobile("tatooine", "farmers_wife", 600, -6128.260, 6.102, 1845.650, 44.951, 0)
	spawnMobile("tatooine", "farmers_child", 600, -6130.250, 6.148, 1848.000, 146.645, 0)
	
	-- Tent
	spawnMobile("tatooine", "jawa_poi", 600, -6108.430, 6.119, 1854.190, -168.669, 0)
	--spawnMobile("tatooine", "jawa_smuggler", 600, -6109.630, 6.073, 1850.870, 10.805, 0)
	
	-- Tent
	spawnMobile("tatooine", "scavenger", 600, -6105.770, 7.200, 1876.150, -98.492, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6100.430, 6.979, 1874.480, 42.015, 0)
	spawnMobile("tatooine", "jawa_healer_poi", 600, -6102.740, 7.177, 1876.340, 105.968, 0)
	
	-- Canopy
	spawnMobile("tatooine", "jawa_poi", 600, -6120.880, 7.706, 1879.030, 26.748, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6121.260, 7.966, 1881.340, 150.557, 0)
	spawnMobile("tatooine", "commoner_tatooine", 600, -6121.310, 8.365, 1884.780, -129.463, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6123.150, 8.465, 1885.460, 176.567, 0)
	
	-- Dome Houses
	spawnMobile("tatooine", "jawa_poi", 600, -6146.680, 7.080, 1866.570, -152.161, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6148.050, 7.584, 1873.060, 54.630, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6145.830, 7.657, 1874.370, -95.463, 0)
	
	-- Tent Cluster
	spawnMobile("tatooine", "jawa_poi", 600, -6071.840, 10.802, 1904.960, -160.486, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6067.380, 10.531, 1901.040, 67.575, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6063.900, 10.867, 1901.970, -102.024, 0)
	spawnMobile("tatooine", "commoner_old", 600, -6064.160, 11.961, 1910.560, 93.988, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6061.060, 12.454, 1911.960, -156.009, 0)
	spawnMobile("tatooine", "devaronian_male", 600, -6059.150, 12.399, 1909.300, -115.978, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6083.090, 10.157, 1924.180, -112.091, 0)
	spawnMobile("tatooine", "commoner_tatooine", 600, -6085.170, 10.049, 1923.600, 61.361, 0)
	
	-- Crawler
	spawnMobile("tatooine", "jawa_poi", 600, -6123.260, 6.450, 1812.290, -116.804, 0)
	spawnMobile("tatooine", "commoner_fat", 600, -6125.770, 6.516, 1809.530, 30.035, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6123.290, 6.651, 1807.380, -176.159, 0)
	spawnMobile("tatooine", "jawa_leader_poi", 600, -6122.600, 6.823, 1804.870, -176.159, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6123.230, 6.994, 1802.610, 9.479, 0)
	spawnMobile("tatooine", "r4", 600, -6122.400, 7.118, 1801.420, -91.645, 0)
	spawnMobile("tatooine", "eg6_power_droid", 600, -6122.380, 7.310, 1799.560, -91.645, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6123.020, 7.453, 1798.180, 0.000, 0)
	
	-- Hovels
	spawnMobile("tatooine", "jawa_poi", 600, -6100.840, 6.172, 1832.440, 55.087, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6094.930, 6.048, 1841.790, 170.197, 0)
	spawnMobile("tatooine", "jawa_engineer_poi", 300, -6095.260, 6.080, 1839.210, 14.127, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6079.390, 6.021, 1846.490, 54.682, 0)
	
	-- Dome Houses
	spawnMobile("tatooine", "jawa_poi", 600, -6068.180, 7.094, 1878.710, 174.814, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6068.000, 6.825, 1876.200, 31.008, 0)
	
	-- Hovels
	spawnMobile("tatooine", "jawa_poi", 600, -6090.350, 10.358, 1910.360, -165.395, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6096.040, 10.178, 1911.140, 77.474, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6117.270, 9.510, 1916.360, 114.374, 0)
	spawnMobile("tatooine", "jawa_thief_poi", 600, -6115.550, 9.479, 1917.080, 142.642, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6114.830, 9.614, 1915.280, 51.347, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6116.080, 9.634, 1914.720, 29.945, 0)
	
	-- Saucer
	spawnMobile("tatooine", "jawa_engineer_poi", 600, -6149.440, 10.070, 1904.440, 79.172, 0)
	spawnMobile("tatooine", "spacer", 600, -6146.920, 10.040, 1906.230, -165.636, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6146.380, 10.028, 1904.410, -100.932, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6148.210, 10.025, 1902.720, 27.088, 0)
	
	-- Crawler
	spawnMobile("tatooine", "r2", 600, -6168.600, 8.994, 1884.490, 144.538, 0)
	spawnMobile("tatooine", "r4", 600, -6166.940, 9.091, 1885.690, 143.232, 0)
	spawnMobile("tatooine", "ra7_bug_droid", 600, -6164.780, 9.195, 1887.040, 156.766, 0)
	spawnMobile("tatooine", "rancher", 600, -6165.580, 8.923, 1884.280, 36.089, 0)
	spawnMobile("tatooine", "jawa_leader_poi", 600, -6167.400, 8.841, 1883.180, 9.433, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6166.120, 8.800, 1882.970, 5.940, 0)
	spawnMobile("tatooine", "jawa_poi", 600, -6163.290, 9.208, 1887.390, -129.183, 0)

 	-- Placeholder for Clothing & Apparel Junk Dealer
	--(now spawned in statics) spawnMobile("tatooine", "jawa", 300, -6228.01, 23.63, 1868.02, 120, 0)
	-- Placeholder for Misc Items Junk Dealer
	--(now spawned in statics) spawnMobile("tatooine", "jawa", 300, -6223.90, 23.70, 1887.03, -85, 0)
	-- Placeholder for Weapons Junk Dealer
	--(now spawned in statics) spawnMobile("tatooine", "jawa", 300, -6204.08, 23.63, 1846.91, -85, 0)
	-- Placeholder for Tusken Equipment Junk Dealer
	--(now spawned in statics) spawnMobile("tatooine", "jawa", 300, -6113.37, 23.97, 1870.82, -140, 0)
	
	
--Tarkin Specific
	--Thief
	spawnMobile("tatooine", "jawa_thief_poi",600,-6126.3,6.8,1864.2,77,0)
	spawnMobile("tatooine", "jawa_thief_poi",600,-6146.1,6.2,1841.8,52,0)
	spawnMobile("tatooine", "jawa_thief_poi",600,-6169.0,8.9,1883.1,21,0)
	spawnMobile("tatooine", "jawa_thief_poi",600,-6147.1,7.8,1875.8,169,0)
	
	--Healer
	spawnMobile("tatooine", "jawa_healer_poi",600,-6125.9,7.2,1799.9,76,0)
	spawnMobile("tatooine", "jawa_healer_poi",600,-6140.6,6.2,1844.9,-98,0)
	spawnMobile("tatooine", "jawa_healer_poi",600,-6169.2,7.0,1856.9,4,0)
	spawnMobile("tatooine", "jawa_healer_poi",600,-6178.8,7.0,1849.0,-83,0)
	spawnMobile("tatooine", "jawa_healer_poi",600,-6185.4,7.2,1849.8,81,0)
	spawnMobile("tatooine", "jawa_healer_poi",600,-6116.7,7.8,1880.6,-70,0)
	spawnMobile("tatooine", "jawa_healer_poi",600,-6066.1,12.0,1913.3,-151,0)
	
	--Protector
	spawnMobile("tatooine", "jawa_protector_poi",600,-6126.3,6.4,1812.5,134,0)
	spawnMobile("tatooine", "jawa_protector_poi",600,-6134.2,6.1,1831.5,-167,0)
	spawnMobile("tatooine", "jawa_protector_poi",600,-6157.9,6.5,1849.6,-1,0)
	spawnMobile("tatooine", "jawa_protector_poi",600,-6163.4,9.0,1884.9,-58,0)
	spawnMobile("tatooine", "jawa_protector_poi",600,-6118.1,8.5,1886.0,-132,0)
	spawnMobile("tatooine", "jawa_protector_poi",600,-6114.3,6.2,1854.8,-70,0)
	
	--Warlord
	spawnMobile("tatooine", "jawa_warlord_poi",600,-6134.2,6.2,1825.3,-30,0)
	spawnMobile("tatooine", "jawa_warlord_poi",600,-6168.5,7.5,1865.9,-145,0)
	spawnMobile("tatooine", "jawa_warlord_poi",600,-6105.5,7.0,1874.2,-81,0)
	
	--Leader
	spawnMobile("tatooine", "jawa_leader_poi",600,-6100.3,7.2,1877.0,-140,0)
	spawnMobile("tatooine", "jawa_leader_poi",600,-6106.7,6.1,1851.8,-70,0)
	
end

