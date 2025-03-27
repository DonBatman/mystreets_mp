core.register_craftitem("mystreets:plastic", {
    description = "Plastic",
    inventory_image = "mystreets_plastic.png"
})
--Craft
minetest.register_craft({
		type = "cooking",
		output = "mystreets:plastic 20",
		recipe = "mystreets:tar",
		cooktime = 5
	})
