minetest.register_node("default:sponge", {
	description = "Sponge",
	tiles = {"default_sponge.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})

cotton_tbl = {
  "default:cotton",
  "default:white_cotton 5",
  "default:lime_cotton 5",
  "default:grey_cotton 5",
  "default:black_cotton 5",
  "default:green_cotton 5",
  "default:red_cotton 5",
  "default:blue_cotton 5",
  "default:cyan_cotton 5",
  "default:orange_cotton 5",
  "default:yellow_cotton 5",
  "default:light_blue_cotton 5",
  "default:light_grey_cotton 5",
  "default:dark_green_cotton 5",
  "default:pink_cotton 5",
  "default:magenta_cotton 5",
  "default:purple_cotton 5",
  "default:brown_cotton 5",
}



minetest.register_on_dignode(function(pos, oldnode, digger)
	if oldnode.name == "default:cotton" then
	local cotton = (cotton_tbl[math.random(#cotton_tbl)])
	minetest.add_item(pos, cotton)
end
end)

minetest.register_node("default:white_cotton", {
	description = "White cotton block",
	tiles = {"default_white_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:lime_cotton", {
	description = "Lime cotton block",
	tiles = {"default_lime_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:red_cotton", {
	description = "red cotton block",
	tiles = {"default_red_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:green_cotton", {
	description = "green cotton block",
	tiles = {"default_green_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:blue_cotton", {
	description = "blue cotton block",
	tiles = {"default_blue_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:orange_cotton", {
	description = "orange cotton block",
	tiles = {"default_orange_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:yellow_cotton", {
	description = "yellow cotton block",
	tiles = {"default_yellow_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:cyan_cotton", {
	description = "cyan cotton block",
	tiles = {"default_cyan_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:pink_cotton", {
	description = "pink cotton block",
	tiles = {"default_pink_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:grey_cotton", {
	description = "grey cotton block",
	tiles = {"default_grey_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:brown_cotton", {
	description = "brown cotton block",
	tiles = {"default_brown_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:black_cotton", {
	description = "black cotton block",
	tiles = {"default_black_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:light_grey_cotton", {
	description = "light grey cotton block",
	tiles = {"default_light_grey_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:dark_green_cotton", {
	description = "dark green cotton block",
	tiles = {"default_dark_green_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:light_blue_cotton", {
	description = "light blue cotton block",
	tiles = {"default_light_blue_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:purple_cotton", {
	description = "purple cotton block",
	tiles = {"default_purple_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:magenta_cotton", {
	description = "magenta cotton block",
	tiles = {"default_magenta_cotton.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {snappy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_leaves_defaults(),
})


minetest.register_abm({
	nodenames = {"default:sponge"},
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		if minetest.find_node_near(pos,3,"group:liquid") then
	for i=1,2000 do
		hpos = pos
		hpos = {x=hpos.x +math.random(-3, 3), y=hpos.y +math.random(-3, 3), z=hpos.z +math.random(-3, 3)}
if minetest.get_node({x=hpos.x, y=hpos.y, z=hpos.z}).name == "default:water_source" or
minetest.get_node({x=hpos.x, y=hpos.y, z=hpos.z}).name == "default:lava_source" then
minetest.set_node({x=hpos.x, y=hpos.y, z=hpos.z}, {name = "air"})
	end
	end
	end
	end
})

minetest.register_node("default:amethyst_block", {
	description = "Amethyst Block",
	tiles = {"default_amethyst_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:topaz_block", {
	description = "Topaz Block",
	tiles = {"default_topaz_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:sapphire_block", {
	description = "Sapphire Block",
	tiles = {"default_sapphire_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:onyx_block", {
	description = "Onyx Block",
	tiles = {"default_onyx_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:emerald_block", {
	description = "Emerald Block",
	tiles = {"default_emerald_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:ruby_block", {
	description = "Ruby Block",
	tiles = {"default_ruby_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:diamond_block", {
	description = "Diamond Block",
	tiles = {"default_diamond_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})




minetest.register_node("default:apple", {
	description = "Apple",
	drawtype = "plantlike",
	tiles = {"default_apple.png"},
	inventory_image = "default_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	stack_max = 65535,
	is_ground_content = false,
	light_source = 2,
	selection_box = {
		type = "fixed",
		fixed = {0.3,0.3,0.3,-0.3,-0.3,-0.3}
	},
	groups = {fleshy = 3, dig_immediate = 3, flammable = 2, diggable = 1},
	on_use = minetest.item_eat(2),
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:brown_shroom", {
	description = "Brown shroom",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_brown_shroom.png"},
	inventory_image = "default_brown_shroom.png",
	wield_image = "default_brown_shroom.png",
	paramtype = "light",
	sunlight_propagates = true,
	stack_max = 65535,
	walkable = false,
	light_source = 2,
	selection_box = {
		type = "fixed",
		fixed = {0.25,0.1,0.25,-0.25,-0.5,-0.25}
	},
	on_use = minetest.item_eat(3),
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:red_shroom", {
	description = "Red shroom",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_red_shroom.png"},
	inventory_image = "default_red_shroom.png",
	wield_image = "default_red_shroom.png",
	paramtype = "light",
	sunlight_propagates = true,
	stack_max = 65535,
	walkable = false,
	light_source = 2,
	selection_box = {
		type = "fixed",
		fixed = {0.25,0.1,0.25,-0.25,-0.5,-0.25}
	},
	on_use = minetest.item_eat(-3),
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:blue_shroom", {
	description = "Blue shroom",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_blue_shroom.png"},
	inventory_image = "default_blue_shroom.png",
	wield_image = "default_blue_shroom.png",
	paramtype = "light",
	sunlight_propagates = true,
	stack_max = 65535,
	walkable = false,
	light_source = 8,
	selection_box = {
		type = "fixed",
		fixed = {0.25,0.1,0.25,-0.25,-0.5,-0.25}
	},
	on_use = minetest.item_eat(5),
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:red_flower", {
	description = "Red flower",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_red_flower.png"},
	inventory_image = "default_red_flower.png",
	wield_image = "default_red_flower.png",
	paramtype = "light",
	sunlight_propagates = true,
	stack_max = 65535,
	walkable = false,
	light_source = 2,
	selection_box = {
		type = "fixed",
		fixed = {0.25,0.3,0.25,-0.25,-0.5,-0.25}
	},
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:yellow_flower", {
	description = "yellow flower",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_yellow_flower.png"},
	inventory_image = "default_yellow_flower.png",
	wield_image = "default_yellow_flower.png",
	paramtype = "light",
	sunlight_propagates = true,
	stack_max = 65535,
	walkable = false,
	light_source = 2,
	selection_box = {
		type = "fixed",
		fixed = {0.25,0.3,0.25,-0.25,-0.5,-0.25}
	},
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:blue_flower", {
	description = "blue flower",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_blue_flower.png"},
	inventory_image = "default_blue_flower.png",
	wield_image = "default_blue_flower.png",
	paramtype = "light",
	sunlight_propagates = true,
	stack_max = 65535,
	walkable = false,
	light_source = 2,
	selection_box = {
		type = "fixed",
		fixed = {0.25,0.3,0.25,-0.25,-0.5,-0.25}
	},
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:cotton", {
	description = "Cotton",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_cotton.png"},
	inventory_image = "default_cotton.png",
	wield_image = "default_cotton.png",
	paramtype = "light",
	drop = "",
	sunlight_propagates = true,
	stack_max = 65535,
	walkable = false,
	light_source = 2,
	selection_box = {
		type = "fixed",
		fixed = {0.35,0.35,0.35,-0.35,-0.5,-0.35}
	},
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})


minetest.register_node("default:grass", {
	description = "Grass",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_tallgrass.png"},
	inventory_image = "default_tallgrass.png",
	wield_image = "default_tallgrass.png",
	paramtype = "light",
	sunlight_propagates = true,
	stack_max = 65535,
	walkable = false,
	light_source = 2,
	selection_box = {
		type = "fixed",
		fixed = {0.35,0.4,0.35,-0.35,-0.5,-0.35}
	},
	buildable_to = true,
	groups = {snappy = 3, flora = 1, grass = 1, flammable = 1, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("default:stone", {
	description = "Stone",
	tiles = {"default_stone.png"},
	groups = {cracky = 3, stone = 1 , diggable = 1},
drop = {
		max_items = 1,
		items = {
		{items = {'default:stone_slab'},rarity = 10,},
		{items = {'default:stone_block'},rarity = 6,},
		{items = {'default:stonebrick'},rarity = 6,},
		{items = {'default:cobble'},rarity = 3,},
		{items = {'default:stone'},rarity = 1,},
		}
	},
	light_source = 2,
	stack_max = 65535,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stone_block", {
	description = "Stone block",
	tiles = {"default_stone_block.png"},
	groups = {cracky = 3, stone = 1 , diggable = 1},
	light_source = 2,
	stack_max = 65535,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stone_slab", {
	description = "Stone slab",
	tiles = {"default_stone_block.png", "default_stone_block.png", "default_stone_slab.png"},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky = 3, stone = 1 , diggable = 1},
	light_source = 2,
	stack_max = 65535,
	legacy_mineral = true,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
	},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:cobble", {
	description = "Cobblestone",
	tiles = {"default_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:stonebrick", {
	description = "Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_stone_brick.png"},
	is_ground_content = false,
	light_source = 2,
	stack_max = 65535,
	groups = {cracky = 2, stone = 1, diggable = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:desert_cobble", {
	description = "DesertCobblestone",
	tiles = {"default_desert_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:desert_stonebrick", {
	description = "Desert Stone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_desert_stone_brick.png"},
	is_ground_content = false,
	light_source = 2,
	stack_max = 65535,
	groups = {cracky = 2, stone = 1, diggable = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:mossycobble", {
	description = "Mossy Cobblestone",
	tiles = {"default_mossycobble.png"},
	is_ground_content = false,
	light_source = 2,
	stack_max = 65535,
	groups = {cracky = 3, stone = 1, diggable = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:desert_stone", {
	description = "Desert Stone",
	tiles = {"default_desert_stone.png"},
	groups = {cracky = 3, stone = 1, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	drop = {
		max_items = 1,
		items = {
		{items = {'default:desert_stonebrick'},rarity = 6,},
		{items = {'default:desert_cobble'},rarity = 3,},
		{items = {'default:desert_stone'},rarity = 1,},
		}
	},
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:sandstone", {
	description = "Sandstone",
	tiles = {"default_sandstone.png"},
	groups = {crumbly = 1, cracky = 3, diggable = 1},
	light_source = 2,
	stack_max = 65535,
drop = {
		max_items = 1,
		items = {
		{items = {'default:sandstone_brick'},rarity = 4,},
		{items = {'default:sandstone'},rarity = 1,},

		}
	},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:sandstone_brick", {
	description = "Sandstone brick",
	tiles = {"default_sandstone_brick.png"},
	groups = {crumbly = 1, cracky = 3, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:obsidian", {
	description = "Obsidian",
	tiles = {"default_obsidian.png"},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 1, diggable = 1},
})
minetest.register_node("default:dirt", {
	description = "Dirt",
	tiles = {"default_dirt.png"},
	groups = {crumbly = 3, soil = 1, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("default:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"default_grass.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})
minetest.register_node("default:sand", {
	description = "Sand",
	tiles = {"default_sand.png"},
	light_source = 2,
	stack_max = 65535,
drop = {
		max_items = 1,
		items = {
		{items = {'default:sponge'},rarity = 100,},
		{items = {'default:sand'},rarity = 1,},

		}
	},
	groups = {crumbly = 3, falling_node = 1, sand = 1, diggable = 1},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("default:desert_sand", {
	description = "Desert Sand",
	tiles = {"default_desert_sand.png"},
	light_source = 2,
	stack_max = 65535,
	groups = {crumbly = 3, falling_node = 1, sand = 1, diggable = 1},
	sounds = default.node_sound_sand_defaults(),
})
minetest.register_node("default:gravel", {
	description = "Gravel",
	tiles = {"default_gravel.png"},
	groups = {crumbly = 2, falling_node = 1, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_gravel_defaults(),
})
minetest.register_node("default:clay", {
	description = "Clay",
	tiles = {"default_clay.png"},
	groups = {crumbly = 3, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_dirt_defaults(),
})
minetest.register_node("default:tree", {
	description = "Tree",
	tiles = {"default_tree_top.png", "default_tree_top.png", "default_tree.png"},
	is_ground_content = false,
	stack_max = 65535,
	light_source = 2,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, diggable = 1},
drop = {
		max_items = 1,
		items = {
			{
				items = {'default:wood 5'},
				rarity = 4,
			},
			{
				items = {'default:wood 3'},
				rarity = 3,
			},
			{
				items = {'default:tree'},
				rarity = 1,
			},


		}
	},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("default:bookshelf", {
	description = "Bookshelf",
	tiles = {"default_wood.png", "default_wood.png", "default_bookshelf.png"},
	is_ground_content = false,
	stack_max = 65535,
	light_source = 2,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, diggable = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:wood", {
	description = "Wooden Planks",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_wood.png"},
	is_ground_content = false,
	light_source = 2,
	stack_max = 65535,
drop = {
		max_items = 1,
		items = {
		{items = {'default:bookshelf'},rarity = 12,},
		{items = {'default:wooden_cube'},rarity = 6,},
		{items = {'default:wood'},rarity = 1,},
		}
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1, diggable = 1},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("default:wooden_cube", {
	description = "Wooden cube",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_wooden_cube.png"},
	is_ground_content = false,
	light_source = 2,
	stack_max = 65535,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, wood = 1, diggable = 1},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("default:sapling", {
	description = "Sapling",
	drawtype = "plantlike",
	tiles = {"default_sapling.png"},
	inventory_image = "default_sapling.png",
	wield_image = "default_sapling.png",
	paramtype = "light",
	visual_scale = 1.2,
	stack_max = 65535,
	sunlight_propagates = true,
	walkable = false,
	light_source = 2,
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_node("default:leaves", {
	description = "Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"default_leaves.png"},
	special_tiles = {"default_leaves_simple.png"},
	paramtype = "light",
	stack_max = 65535,
	is_ground_content = false,
	light_source = 2,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1, diggable = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})
minetest.register_node("default:stone_with_coal", {
	description = "Coal Ore",
	tiles = {"default_stone.png^default_mineral_coal.png"},
	groups = {cracky = 3, diggable = 1},
	stack_max = 65535,
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:stone_with_iron", {
	description = "Iron Ore",
	tiles = {"default_stone.png^default_mineral_iron.png"},
	groups = {cracky = 3, diggable = 1},
	stack_max = 65535,
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:ironblock", {
	description = "Iron Block",
	tiles = {"default_iron_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:stone_with_copper", {
	description = "copper Ore",
	tiles = {"default_stone.png^default_mineral_copper.png"},
	groups = {cracky = 3, diggable = 1},
	stack_max = 65535,
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:copperblock", {
	description = "copper Block",
	tiles = {"default_copper_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:stone_with_silver", {
	description = "silver Ore",
	tiles = {"default_stone.png^default_mineral_silver.png"},
	groups = {cracky = 3, diggable = 1},
	stack_max = 65535,
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:silverblock", {
	description = "silver Block",
	tiles = {"default_silver_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:stone_with_gold", {
	description = "gold Ore",
	tiles = {"default_stone.png^default_mineral_gold.png"},
	groups = {cracky = 3, diggable = 1},
	stack_max = 65535,
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:goldblock", {
	description = "gold Block",
	tiles = {"default_gold_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:stone_with_glow", {
	description = "Glowy Ore",
	tiles = {"default_stone.png^default_mineral_glowy.png"},
	groups = {cracky = 3, diggable = 1},
	stack_max = 65535,
	light_source = 14,
	paramtype = "light",
	sunlight_propagates = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:glowyblock", {
	description = "Glowy metal Block",
	tiles = {"default_glowy_block.png"},
	is_ground_content = false,
	stack_max = 65535,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {cracky = 3, diggable = 1},
	light_source = 14,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("default:cactus", {
	description = "Cactus",
	tiles = {"default_cactus_top.png", "default_cactus_top.png",
		"default_cactus_side.png"},
	paramtype2 = "facedir",
	stack_max = 65535,
	groups = {choppy = 3, diggable = 1},
	light_source = 2,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})
minetest.register_node("default:dry_shrub", {
	description = "Dry Shrub",
	drawtype = "plantlike",
	waving = 1,
	tiles = {"default_dry_shrub.png"},
	inventory_image = "default_dry_shrub.png",
	wield_image = "default_dry_shrub.png",
	paramtype = "light",
	sunlight_propagates = true,
	visual_scale = 1.2,
	stack_max = 65535,
	walkable = false,
	light_source = 2,
	groups = {snappy = 3, flammable = 3, diggable = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 4 / 16, 5 / 16},
	},
})

if liquid_flow == true then
minetest.register_node("default:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.69,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "default_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.69,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	stack_max = 65535,
	pointable = false,
	diggable = true,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_source",
	liquid_alternative_source = "default:water_source",
	liquid_range = 1,
	liquid_renewable = false,
	liquid_viscosity = 1,
	light_source = 2,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, diggable = 1},
	sounds = default.node_sound_water_defaults(),
})
end

if liquid_flow == false then

minetest.register_node("default:water_source", {
	description = "Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.69,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "default_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.69,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	stack_max = 65535,
	pointable = false,
	diggable = true,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = "source",
	liquid_alternative_flowing = "default:water_source",
	liquid_alternative_source = "default:water_source",
	liquid_range = 0,
	liquid_renewable = false,
	liquid_viscosity = 1,
	light_source = 2,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, diggable = 1},
	sounds = default.node_sound_water_defaults(),
})
end






minetest.register_node("default:river_water_source", {
	description = "River Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_river_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "default_river_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	stack_max = 65535,
	liquidtype = "source",
	liquid_alternative_flowing = "default:river_water_flowing",
	liquid_alternative_source = "default:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1, diggable = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("default:river_water_flowing", {
	description = "Flowing River Water",
	drawtype = "flowingliquid",
	tiles = {"default_river_water.png"},
	special_tiles = {
		{
			name = "default_river_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_river_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "default:river_water_flowing",
	liquid_alternative_source = "default:river_water_source",
	liquid_viscosity = 1,
	stack_max = 65535,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1, diggable = 1},
	sounds = default.node_sound_water_defaults(),
})

if liquid_flow == true then

minetest.register_node("default:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.69,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.69,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	buildable_to = true,
	walkable = false,
	pointable = false,
	diggable = true,
	is_ground_content = false,
	liquidtype = "source",
	liquid_alternative_flowing = "default:lava_source",
	liquid_alternative_source = "default:lava_source",
	liquid_range = 1,
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 2 * 2,
	stack_max = 65535,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1, diggable = 1},
})

end

if liquid_flow == false then

minetest.register_node("default:lava_source", {
	description = "Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.69,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "default_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1.69,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	buildable_to = true,
	walkable = false,
	pointable = false,
	diggable = true,
	is_ground_content = false,
	liquidtype = "source",
	liquid_alternative_flowing = "default:lava_source",
	liquid_alternative_source = "default:lava_source",
	liquid_range = 0,
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 2 * 2,
	stack_max = 65535,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1, diggable = 1},
})

end

minetest.register_node("default:glass", {
	description = "Glass",
	drawtype = "glasslike",
	tiles = {"default_glass.png"},
	paramtype = "light",
	paramtype2 = "glasslikeliquidlevel",
	sunlight_propagates = true,
	is_ground_content = false,
	light_source = 2,
	stack_max = 65535,
	groups = {cracky = 3, oddly_breakable_by_hand = 3, diggable = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("default:brick", {
	description = "Brick Block",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"default_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, diggable = 1},
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("default:cloud", {
	description = "Cloud",
	tiles = {"default_cloud.png"},
	is_ground_content = false,
	light_source = 2,
	stack_max = 65535,
	sounds = default.node_sound_defaults(),
	groups = {not_in_creative_inventory = 1, diggable = 1},
})

minetest.register_node("default:lantern", {
	description = "Lantern",
	tiles = {"default_lantern.png"},
	light_source = 14,
	stack_max = 65535,
	groups = {choppy = 3, diggable = 1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("default:mese", {
	description = "Mese",
	tiles = {"default_mese.png"},
	light_source = 9,
	stack_max = 65535,
	groups = {craacky = 3, diggable = 1},
	sounds = default.node_sound_stone_defaults(),
})


