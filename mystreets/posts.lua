--post
minetest.register_node("mystreets:lightpost", {
	description = "Light Post",
	tiles = {
		"mystreets_post_tnb.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125},
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost 3",
	recipe = {
		{"mystreets:hardened_steel"},
		{"mystreets:hardened_steel"},
		{"mystreets:hardened_steel"},
	}
})

--post L
minetest.register_node("mystreets:lightpost_l", {
	description = "Light Post L",
	tiles = {
		"mystreets_post_hor.png",
		"mystreets_post_hor.png",
		"mystreets_post_corner1.png",
		"mystreets_post_corner2.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, 0.0625, 0.125},
			{-0.125, -0.5, -0.0625, 0.125, 0, 0.0625},
			{-0.0625, -0.125, -0.5, 0.0625, 0.125, 0.0625},
			{-0.125, -0.0625, -0.5, 0.125, 0.0625, 0},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_l 3",
	recipe = {
		{"mystreets:lightpost","mystreets:lightpost",""},
		{"mystreets:lightpost","",""},
		{"","",""},
	}
})

--post base
minetest.register_node("mystreets:lightpost_base", {
	description = "Light Post Base",
	tiles = {
		"mystreets_post_tnb.png",
		"mystreets_post_tnb.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125},
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625},
			{-0.3125, -0.5, -0.3125, 0.3125, -0.375, 0.3125},
			{-0.25, -0.5, -0.25, 0.25, -0.3125, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.25, 0.1875},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_base 4",
	recipe = {
		{"","mystreets:lightpost",""},
		{"","mystreets:lightpost",""},
		{"mystreets:hardened_steel","mystreets:lightpost","mystreets:hardened_steel"},
	}
})

--post t
minetest.register_node("mystreets:lightpost_t", {
	description = "Light Post T",
	tiles = {
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.125, -0.5, 0.0625, 0.125, 0.5},
			{-0.125, -0.0625, -0.5, 0.125, 0.0625, 0.5},
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625},
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_t 5",
	recipe = {
		{"","mystreets:lightpost",""},
		{"mystreets:lightpost","mystreets:lightpost","mystreets:lightpost"},
		{"","mystreets:lightpost",""},
	}
})

--post all
minetest.register_node("mystreets:lightpost_all", {
	description = "Light Post All Directions",
	tiles = {
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.125, -0.5, 0.0625, 0.125, 0.5},
			{-0.125, -0.0625, -0.5, 0.125, 0.0625, 0.5},
			{-0.5, -0.125, -0.0625, 0.5, 0.125, 0.0625},
			{-0.5, -0.0625, -0.125, 0.5, 0.0625, 0.125},
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625},
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_all 9",
	recipe = {
		{"mystreets:lightpost","mystreets:lightpost","mystreets:lightpost"},
		{"mystreets:lightpost","mystreets:lightpost","mystreets:lightpost"},
		{"mystreets:lightpost","mystreets:lightpost","mystreets:lightpost"},
	}
})

--post all -1
minetest.register_node("mystreets:lightpost_allless1", {
	description = "Light Post All Directions -1",
	tiles = {
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.125, -0.5, 0.0625, 0.125, 0.5},
			{-0.125, -0.0625, -0.5, 0.125, 0.0625, 0.5},
			{-0.5, -0.125, -0.0625, 0.125, 0.125, 0.0625},
			{-0.5, -0.0625, -0.125, 0.125, 0.0625, 0.125},
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625},
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_allless1 8",
	recipe = {
		{"mystreets:lightpost","mystreets:lightpost","mystreets:lightpost"},
		{"mystreets:lightpost","mystreets:lightpost","mystreets:lightpost"},
		{"mystreets:lightpost","mystreets:lightpost",""},
	}
})

--post y
minetest.register_node("mystreets:lightpost_y", {
	description = "Light Post Y",
	tiles = {
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.125, -0.5, 0.0625, 0.125, 0.0625},
			{-0.125, -0.0625, -0.5, 0.125, 0.0625, 0},
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625},
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_y 4",
	recipe = {
		{"mystreets:lightpost","","mystreets:lightpost"},
		{"","mystreets:lightpost",""},
		{"","mystreets:lightpost",""},
	}
})

--post 3 way corner
minetest.register_node("mystreets:lightpost_3corner", {
	description = "Light Post 3 Way Corner",
	tiles = {
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.125, -0.5, 0.0625, 0.125, 0.0625},
			{-0.125, -0.0625, -0.5, 0.125, 0.0625, 0.0625},
			{-0.125, -0.5, -0.0625, 0.125, 0.0625, 0.0625},
			{-0.0625, -0.5, -0.125, 0.0625, 0.0625, 0.125},
			{-0.0625, -0.125, -0.0625, 0.5, 0.125, 0.0625},
			{-0.0625, -0.0625, -0.125, 0.5, 0.0625, 0.125},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_3corner 4",
	recipe = {
		{"mystreets:lightpost","mystreets:lightpost",""},
		{"mystreets:lightpost","mystreets:lightpost",""},
		{"","",""},
	}
})


--Hardened Steel
minetest.register_craftitem("mystreets:hardened_steel", {
	description = "Hardened Steel",
	inventory_image = "mystreets_hardened_steel.png",

})
--Craft
minetest.register_craft({
		type = "cooking",
		output = "mystreets:hardened_steel",
		recipe = "default:steel_ingot",
		cooktime = 2
	})
--post 3 way corner without top
minetest.register_node("mystreets:lightpost_3cornernt", {
	description = "Light Post 3 Way Corner No Top",
	tiles = {
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.0625, 0.125, 0.0625, 0.0625},
			{-0.0625, -0.5, -0.125, 0.0625, 0.125, 0.125},
			{-0.0625, -0.125, -0.5, 0.0625, 0.125, 0.5},
			{-0.125, -0.0625, -0.5, 0.125, 0.0625, 0.5},
			{-0.5, -0.0625, -0.125, 0.125, 0.0625, 0.125},
			{-0.5, -0.125, -0.0625, 0.0625, 0.125, 0.0625},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_3cornernt 5",
	recipe = {
		{"mystreets:lightpost","mystreets:lightpost",""},
		{"mystreets:lightpost","mystreets:lightpost",""},
		{"","mystreets:lightpost",""},
	}
})
minetest.register_node("mystreets:lightpost_4cornernt", {
	description = "Light Post 3 Way Corner No Top",
	tiles = {
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png",
		"mystreets_post_vert.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.0625, 0.125, 0.0625, 0.0625},
			{-0.0625, -0.5, -0.125, 0.0625, 0.125, 0.125},
			{-0.0625, -0.125, -0.5, 0.0625, 0.125, 0.5},
			{-0.125, -0.0625, -0.5, 0.125, 0.0625, 0.5},
			{-0.5, -0.0625, -0.125, 0.5, 0.0625, 0.125},
			{-0.5, -0.125, -0.0625, 0.5, 0.125, 0.0625},
		}
	},

	on_place = minetest.rotate_node
})
--Craft
minetest.register_craft({
	output = "mystreets:lightpost_4cornernt 6",
	recipe = {
		{"mystreets:lightpost","mystreets:lightpost",""},
		{"mystreets:lightpost","mystreets:lightpost",""},
		{"","mystreets:lightpost","mystreets:lightpost"},
	}
})
