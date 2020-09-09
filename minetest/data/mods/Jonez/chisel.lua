chisel = {}
local S = minetest.get_translator(minetest.get_current_modname())

chisel.chiselable = {}
chisel.group_style_index = {}
chisel.group_style_nodes = {}
chisel.player_copied_style = {}



chisel.register_chiselable = function(node_name, group_name, style)
	chisel.chiselable[ node_name ] = {}
	chisel.chiselable[ node_name ].group_name = group_name
	chisel.chiselable[ node_name ].style = style

	if not chisel.group_style_nodes[ group_name ] then
		chisel.group_style_nodes[ group_name ] = {}
	end

	chisel.group_style_nodes[ group_name ][ style ] = node_name
end



chisel.register_chiselable_stair_and_slab = function(node_subname, group_subname, style)
	chisel.register_chiselable("stairs:stair_" .. node_subname, "stairs:stair_" .. group_subname, style)
	chisel.register_chiselable("stairs:stair_inner_" .. node_subname, "stairs:stair_inner_" .. group_subname, style)
	chisel.register_chiselable("stairs:stair_outer_" .. node_subname, "stairs:stair_outer_" .. group_subname, style)
	chisel.register_chiselable("stairs:slab_" .. node_subname, "stairs:slab_" .. group_subname, style)
end



local function chisel_interact(player, pointed_thing, is_right_click)
	if pointed_thing.type ~= "node" then return end

	local pos = pointed_thing.under
	local is_sneak = player and player:get_player_control().sneak or false
	local player_name = player and player:get_player_name()
	
	-- A true player is required
	if not player_name then return end

	-- Check for node protection
	if minetest.is_protected(pos, player_name) then
		minetest.chat_send_player(player_name, "You're not authorized to alter nodes in this area")
		minetest.record_protection_violation(pos, player_name)
		return
	end

	-- Retrieve group info and styles
	local node = minetest.get_node(pos)
	local node_name = node.name

	if not chisel.chiselable[ node_name ] then
		minetest.chat_send_player(player_name, "Not chiselable")
		return
	end
	
	local group_name = chisel.chiselable[ node_name ].group_name
	local style = chisel.chiselable[ node_name ].style
	local group = chisel.group_style_nodes[ group_name ]
	local new_style , new_node_name
	

	-- Now branch on the four user-input cases
	if is_right_click then
		if is_sneak then
			-- Copy style
			chisel.player_copied_style[ player_name ] = style
			minetest.chat_send_player(player_name, "Chisel style " .. style .. " copied")
			return
		else
			-- Paste style
			new_style = chisel.player_copied_style[ player_name ]
			if not new_style then
				minetest.chat_send_player(player_name, "No chisel style copied yet, use sneak + right-click to copy a style")
				return
			end
			
			-- Already the correct style, exit now!
			if new_style == style then return end
			
			new_node_name = group[ new_style ]
			if not new_node_name then
				minetest.chat_send_player(player_name, "Chisel style " .. new_style .. " is not supported by this chisel group " .. group_name)
				return
			end
		end
	else
		if is_sneak then
			-- Backward cycle mode
			for k,v in pairs(group) do
				if v == node_name then break end
				new_style = k
				new_node_name = v
			end
			
			if new_node_name == nil then
				-- Not found? Go for the last element
				for k,v in pairs(group) do
					new_style = k
					new_node_name = v
				end
			end
		else
			-- Forward cycle mode
			new_style , new_node_name = next(group,style)
			if new_node_name == nil then
				new_style , new_node_name = next(group)
			end
		end
	end
	
	
	-- Check if rotation could be preserved
	local nodedef = minetest.registered_nodes[node_name]
	local new_nodedef = minetest.registered_nodes[new_node_name]
	local rotation , new_rotation
	
	if nodedef and new_nodedef then
		if ( nodedef.paramtype2 == "facedir" or nodedef.paramtype2 == "colorfacedir" ) and ( new_nodedef.paramtype2 == "facedir" or new_nodedef.paramtype2 == "colorfacedir" ) then 
			rotation = node.param2 % 32		--rotation are on the last 5 digits
		end
	end

	-- Set the new node
	minetest.set_node(pos, {name= new_node_name})
	local new_node = minetest.get_node(pos)

	-- Copy rotation if needed!
	if rotation ~= nil then
		new_rotation = new_node.param2 % 32
		
		if new_rotation ~= rotation then
			new_node.param2 = new_node.param2 - new_rotation + rotation
			minetest.swap_node(pos, new_node)
		end
	end

	minetest.sound_play("jonez_carve", {pos = pos, gain = 0.7, max_hear_distance = 5})
end



--The chisel to carve the marble
minetest.register_craftitem("jonez:chisel", {
	description = S("Chisel for Marble"),
	inventory_image = "jonez_chisel.png",
	wield_image = "jonez_chisel.png^[transformR180",
	on_use = function(itemstack, player, pointed_thing)
		chisel_interact(player, pointed_thing, false)
		return itemstack
	end,
	on_place = function(itemstack, player, pointed_thing)
		chisel_interact(player, pointed_thing, true)
		return itemstack
	end,
})



minetest.register_craft({
	type = "shaped",
	output = "jonez:chisel",
	recipe = {
		{"", "", "default:diamond"},
		{"", "default:steel_ingot", ""},
		{"default:stick", "", ""},
	}
})

