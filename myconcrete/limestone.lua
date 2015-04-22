minetest.register_node("myconcrete:limestone", {
	description = "Limestone",
	tile_images = {
			"myconcrete_limestone.png"
		},
	drawtype = "normal",
	paramtype = "light",
	drop = "myconcrete:lime",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("myconcrete:lime", {
	description = "Lime",
	inventory_image = "myconcrete_lime.png",

})
minetest.register_craft({
	type = "shapeless",
	output = "myconcrete:limestone",
	recipe = {"myconcrete:lime"},
})
