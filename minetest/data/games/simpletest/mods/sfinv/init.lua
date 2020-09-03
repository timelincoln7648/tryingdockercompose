dofile(minetest.get_modpath("sfinv") .. "/api.lua")

sfinv.register_page("sfinv:crafting", {
	title = "Main Inventory",
	get = function(self, player, context)
		return sfinv.make_formspec(player, context, [[

				listring[current_player;main]
				listring[current_player;craft]

			]], true)
	end
})

minetest.register_on_joinplayer(function(player)
player:get_inventory():set_size("main", "172")
	player:hud_set_hotbar_itemcount(10)
	player:get_inventory():set_size("craft", 0)
	player:hud_set_hotbar_image("gui_hotbar.png")
 	player:hud_set_hotbar_selected_image("gui_hotbar_selected.png")
end)

