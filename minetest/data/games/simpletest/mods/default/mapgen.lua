minetest.register_on_generated(function(minp, maxp)
	if maxp.y < -31000 or maxp.y > 30 then
		return
	end
	local decor = minetest.find_nodes_in_area(minp, maxp,
		{"default:stone"})
	for n = 1, #decor do
		if math.random(1, 100) == 1 then
			local pos = {x = decor[n].x, y = decor[n].y, z = decor[n].z }
				if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" and pos.y <=31000 then
					if math.random(1,5) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:brown_shroom"})
					elseif math.random(1,50) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:blue_shroom"})
				else
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:red_shroom"})
end
end
end
	end
end) 

minetest.register_on_generated(function(minp, maxp)
	if maxp.y < -30 or maxp.y > 31000 then
		return
	end
	local decor = minetest.find_nodes_in_area(minp, maxp,
		{"default:dirt_with_grass"})
	for n = 1, #decor do
		if math.random(1, 20) == 1 then
			local pos = {x = decor[n].x, y = decor[n].y, z = decor[n].z }
				if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" and pos.y <=31000 then
					if math.random(1,60) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:brown_shroom"})
					elseif math.random(1,25) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:red_flower"})
					elseif math.random(1,20) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:yellow_flower"})
					elseif math.random(1,25) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:blue_flower"})
					elseif math.random(1,60) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:red_shroom"})
					elseif math.random(1,40) == 1 then
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:cotton"})
				else
					minetest.add_node({x=pos.x, y=pos.y+1, z=pos.z}, {name = "default:grass"})
end
end
end
	end
end) 

--
-- Aliases for map generators
--

minetest.register_alias("mapgen_stone", "default:stone")
minetest.register_alias("mapgen_dirt", "default:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "default:dirt_with_grass")
minetest.register_alias("mapgen_sand", "default:sand")
minetest.register_alias("mapgen_water_source", "default:water_source")
minetest.register_alias("mapgen_river_water_source", "default:river_water_source")
minetest.register_alias("mapgen_lava_source", "default:lava_source")
minetest.register_alias("mapgen_gravel", "default:gravel")
minetest.register_alias("mapgen_desert_stone", "default:desert_stone")
minetest.register_alias("mapgen_desert_sand", "default:desert_sand")
minetest.register_alias("mapgen_dirt_with_snow", "default:dirt_with_snow")
minetest.register_alias("mapgen_snowblock", "default:snowblock")
minetest.register_alias("mapgen_snow", "default:snow")
minetest.register_alias("mapgen_ice", "default:ice")
minetest.register_alias("mapgen_sandstone", "default:sandstone")

-- Flora

minetest.register_alias("mapgen_tree", "default:tree")
minetest.register_alias("mapgen_leaves", "default:leaves")
minetest.register_alias("mapgen_apple", "default:apple")
minetest.register_alias("mapgen_jungletree", "default:jungletree")
minetest.register_alias("mapgen_jungleleaves", "default:jungleleaves")
minetest.register_alias("mapgen_junglegrass", "default:junglegrass")
minetest.register_alias("mapgen_pine_tree", "default:pine_tree")
minetest.register_alias("mapgen_pine_needles", "default:pine_needles")

-- Dungeons

minetest.register_alias("mapgen_cobble", "default:cobble")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_mossycobble", "default:mossycobble")
minetest.register_alias("mapgen_stair_desert_stone", "stairs:stair_desert_stone")
minetest.register_alias("mapgen_sandstonebrick", "default:sandstonebrick")
minetest.register_alias("mapgen_stair_sandstone_block", "stairs:stair_sandstone_block")


--
-- Register ores
--

-- Blob ores
-- These first to avoid other ores in blobs

-- Mgv6

function default.register_mgv6_blob_ores()

	-- Clay
	-- This first to avoid clay in sand blobs

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:clay",
		wherein         = {"default:sand"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -15,
		y_max           = 0,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Sand

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:sand",
		wherein         = {"default:stone", "default:desert_stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -31,
		y_max           = 0,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Dirt

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:dirt",
		wherein         = {"default:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -31,
		y_max           = 31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:gravel",
		wherein         = {"default:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -31000,
		y_max           = 31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})
end


-- All mapgens except mgv6

function default.register_blob_ores()

	-- Clay

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:clay",
		wherein         = {"default:sand"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -15,
		y_max           = 0,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Dirt

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:dirt",
		wherein         = {"default:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -31,
		y_max           = 31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
		biomes = {"taiga", "snowy_grassland", "grassland", "coniferous_forest",
			"deciduous_forest", "deciduous_forest_shore", "savanna", "savanna_shore",
			"rainforest", "rainforest_swamp", "floatland_grassland",
			"floatland_coniferous_forest"}
	})

	-- Gravel

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "default:gravel",
		wherein         = {"default:stone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_min           = -31000,
		y_max           = 31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
		biomes = {"icesheet_ocean", "tundra", "tundra_beach", "tundra_ocean",
			"taiga", "taiga_ocean", "snowy_grassland", "snowy_grassland_ocean",
			"grassland", "grassland_dunes", "grassland_ocean", "coniferous_forest",
			"coniferous_forest_dunes", "coniferous_forest_ocean", "deciduous_forest",
			"deciduous_forest_shore", "deciduous_forest_ocean", "cold_desert",
			"cold_desert_ocean", "savanna", "savanna_shore", "savanna_ocean",
			"rainforest", "rainforest_swamp", "rainforest_ocean", "underground",
			"floatland_ocean", "floatland_grassland", "floatland_coniferous_forest"}
	})
end


-- Scatter ores
-- All mapgens

function default.register_ores()

	-- ores

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_coal",
		wherein        = "default:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 9,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 31000,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_iron",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 9,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 31000,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_copper",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 9,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 31000,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_silver",
		wherein        = "default:stone",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 9,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 31000,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_gold",
		wherein        = "default:stone",
		clust_scarcity = 25 * 25 * 25,
		clust_num_ores = 9,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 31000,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:stone_with_glow",
		wherein        = "default:stone",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 4,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = -10,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:amethyst_block",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -128,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:topaz_block",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -128,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:emerald_block",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -128,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:sapphire_block",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -128,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:ruby_block",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -128,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:onyx_block",
		wherein        = "default:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -128,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:diamond_block",
		wherein        = "default:stone",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -256,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:mese",
		wherein        = "default:stone",
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -31000,
		y_max          = -256,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "default:lava_source",
		wherein        = "default:stone",
		clust_scarcity = 30 * 30 * 30,
		clust_num_ores = 100,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = -75,
	})
end


--
-- Register biomes
--

-- All mapgens except mgv6

function default.register_biomes(upper_limit)

	-- Deciduous forest

	minetest.register_biome({
		name = "deciduous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 1,
		y_max = upper_limit,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_shore",
		--node_dust = "",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -1,
		y_max = 0,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -2,
		heat_point = 60,
		humidity_point = 68,
	})

	-- Desert

	minetest.register_biome({
		name = "desert",
		--node_dust = "",
		node_top = "default:desert_sand",
		depth_top = 3,
		node_filler = "default:sandstone",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = upper_limit,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 92,
		humidity_point = 16,
	})
	-- Underground

	minetest.register_biome({
		name = "underground",
		--node_dust = "",
		--node_top = "",
		--depth_top = ,
		--node_filler = "",
		--depth_filler = ,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -31000,
		y_max = -113,
		heat_point = 50,
		humidity_point = 50,
	})
end


-- Biomes for floatlands

function default.register_floatland_biomes(floatland_level, shadow_limit)

	-- Coniferous forest

	minetest.register_biome({
		name = "floatland_coniferous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = floatland_level + 2,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 70,
	})

	-- Grassland

	minetest.register_biome({
		name = "floatland_grassland",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = floatland_level + 2,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 35,
	})

	-- Sandstone desert

	minetest.register_biome({
		name = "floatland_sandstone_desert",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 1,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = floatland_level + 2,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 0,
	})

	-- Floatland ocean / underground

	minetest.register_biome({
		name = "floatland_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		--node_riverbed = "",
		--depth_riverbed = ,
		y_min = shadow_limit,
		y_max = floatland_level + 1,
		heat_point = 50,
		humidity_point = 50,
	})
end


--
-- Register decorations
--

-- Mgv6

function default.register_mgv6_decorations()

	-- Cacti

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0.002,
			scale = 0.024,
			spread = {x = 100, y = 100, z = 100},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "default:cactus",
		height = 3,
	        height_max = 4,
	})
end




function default.register_decorations()

	-- Apple tree 

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.006,
			scale = 0.022,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("default") .. "/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	-- Cactus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = 0.003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		decoration = "default:cactus",
		height = 2,
		height_max = 5,
	})

	-- Dry shrub

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand", "default:sand"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "sandstone_desert", "cold_desert"},
		y_min = 2,
		y_max = 31000,
		decoration = "default:dry_shrub",
	})
	-- Dry shrubs

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:desert_sand", "default:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.035,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "default:dry_shrub",
	})
end

--
-- Detect mapgen, flags and parameters to select functions
--

-- Get setting or default
local mgv7_spflags = minetest.get_mapgen_setting("mgv7_spflags") or
	"mountains, ridges, nofloatlands"
local captures_float = string.match(mgv7_spflags, "floatlands")
local captures_nofloat = string.match(mgv7_spflags, "nofloatlands")

local mgv7_floatland_level = minetest.get_mapgen_setting("mgv7_floatland_level") or 1280
local mgv7_shadow_limit = minetest.get_mapgen_setting("mgv7_shadow_limit") or 1024

minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()

local mg_name = minetest.get_mapgen_setting("mg_name")
if mg_name == "v6" then
	default.register_mgv6_blob_ores()
	default.register_ores()
	default.register_mgv6_decorations()
elseif mg_name == "v7" and captures_float == "floatlands" and
		captures_nofloat ~= "nofloatlands" then
	-- Mgv7 with floatlands
	default.register_biomes(mgv7_shadow_limit - 1)
	default.register_floatland_biomes(mgv7_floatland_level, mgv7_shadow_limit)
	default.register_blob_ores()
	default.register_ores()
	default.register_decorations()
else
	default.register_biomes(31000)
	default.register_blob_ores()
	default.register_ores()
	default.register_decorations()
end
