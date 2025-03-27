minetest.register_node("myconcrete:limestone", {
	description = "Limestone",
	tiles = {
			"myconcrete_limestone.png",
			"myconcrete_limestone.png",
			"myconcrete_limestone.png",
			"myconcrete_limestone.png",
			"myconcrete_limestone.png",
			"myconcrete_limestone.png",
		},
	drawtype = "normal",
	paramtype = "light",
	drop = "myconcrete:lime",
	groups = {cracky = 2},
--	sounds = default.node_sound_stone_defaults(),
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
minetest.register_craft({
		type = "cooking",
		output = "myconcrete:limestone 1",
		recipe = "myconcrete:lime",
		cooktime = 5
	})
