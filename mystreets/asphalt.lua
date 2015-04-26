-- Asphalt block
	minetest.register_node("mystreets:asphalt", {
		description = "Asphalt",
		tile_images = {"mystreets_asphalt3.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("mystreets:asphalt2", {
		description = "Asphalt",
		tile_images = {"mystreets_asphalt2.png"},
		drawtype = "normal",
		paramtype = "light",
		drop = "mystreets:asphalt",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("mystreets:asphalt1", {
		description = "Asphalt",
		tile_images = {"mystreets_asphalt1.png"},
		drawtype = "normal",
		paramtype = "light",
		drop = "mystreets:asphalt",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_alias("asphalt", "mystreets:asphalt")
minetest.register_abm({
	nodenames = {"mystreets:asphalt"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt2"})
	end,
})
minetest.register_abm({
	nodenames = {"mystreets:asphalt2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt1"})
	end,
})

-- Asphalt block with center dashed line
	minetest.register_node("mystreets:asphalt_center_dashed", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_dashed_straight.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png^mystreets_line_yellow_dashed_straight.png",
			"mystreets_asphalt3.png^mystreets_line_yellow_dashed_straight.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("mystreets:asphalt_center_dashed2", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"mystreets_asphalt2.png^mystreets_line_yellow_dashed_straight.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png^mystreets_line_yellow_dashed_straight.png",
			"mystreets_asphalt2.png^mystreets_line_yellow_dashed_straight.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("mystreets:asphalt_center_dashed1", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"mystreets_asphalt1.png^mystreets_line_yellow_dashed_straight.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png^mystreets_line_yellow_dashed_straight.png",
			"mystreets_asphalt1.png^mystreets_line_yellow_dashed_straight.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_dashed"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_dashed2", param2= node.param2})
	end,
})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_dashed2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_dashed1", param2= node.param2})
	end,
})

-- Asphalt block with center solid line

	minetest.register_node("mystreets:asphalt_center_solid", {
		description = "Asphalt with center solid line",
		tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png",
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("mystreets:asphalt_center_solid2", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"mystreets_asphalt2.png^mystreets_line_yellow_solid_straight.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png^mystreets_line_yellow_solid_straight.png",
			"mystreets_asphalt2.png^mystreets_line_yellow_solid_straight.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("mystreets:asphalt_center_solid1", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"mystreets_asphalt1.png^mystreets_line_yellow_solid_straight.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png^mystreets_line_yellow_solid_straight.png",
			"mystreets_asphalt1.png^mystreets_line_yellow_solid_straight.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid2", param2= node.param2})
	end,
})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid1", param2= node.param2})
	end,
})





-- Asphalt block with center solid dashed line

minetest.register_node("mystreets:asphalt_center_solid_dashed", {
		description = "Asphalt with center solid dashed",
		tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_dashed.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_dashed.png",
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_dashed.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_node("mystreets:asphalt_center_solid_dashed2", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"mystreets_asphalt2.png^mystreets_line_yellow_solid_dashed.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png",
			"mystreets_asphalt2.png^mystreets_line_yellow_solid_dashed.png",
			"mystreets_asphalt2.png^mystreets_line_yellow_solid_dashed.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_node("mystreets:asphalt_center_solid_dashed1", {
		description = "Asphalt with center dashed line",
		tile_images = {
			"mystreets_asphalt1.png^mystreets_line_yellow_solid_dashed.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png",
			"mystreets_asphalt1.png^mystreets_line_yellow_solid_dashed.png",
			"mystreets_asphalt1.png^mystreets_line_yellow_solid_dashed.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid_dashed"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid_dashed2", param2= node.param2})
	end,
})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid_dashed2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid_dashed1", param2= node.param2})
	end,
})


-- Asphalt block with center solid double line
	minetest.register_node("mystreets:asphalt_center_solid_double", {
	description = "Asphalt with center solid double line",
	tile_images = {
			"mystreets_asphalt_center_solid_double.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid_double.png",
			"mystreets_asphalt_center_solid_double.png",
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center corner single line
	minetest.register_node("mystreets:asphalt_center_corner_single", {
	description = "Asphalt with center corner single line",
	tile_images = {
			"mystreets_asphalt_center_corner_single.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with center corner double line
	minetest.register_node("mystreets:asphalt_center_corner_double", {
	description = "Asphalt with center corner double line",
	tile_images = {
			"mystreets_asphalt_center_corner_double.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid_double.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_center_solid_double.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with side dashed line
	minetest.register_node("mystreets:asphalt_side_dashed", {
	description = "Asphalt with side dashed line",
	tile_images = {
			"mystreets_asphalt_side_dashed.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_dashed_inversed.png",
			"mystreets_asphalt_side_dashed.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block with side solid line
	minetest.register_node("mystreets:asphalt_side_solid", {
	description = "Asphalt with side solid line",
	tile_images = {
			"mystreets_asphalt_side_solid.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid_inversed.png",
			"mystreets_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt Outside Corner
	minetest.register_node("mystreets:asphalt_ocorner", {
	description = "Asphalt Outside Corner",
	tile_images = {
			"mystreets_asphalt_ocorner.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid_inversed.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- Asphalt block Inside Corner
	minetest.register_node("mystreets:asphalt_icorner", {
	description = "Asphalt Inside Corner",
	tile_images = {
			"mystreets_asphalt_icorner.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid_inversed.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt_side_solid.png"
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
	})

-- HandiCap Parking Top Right
	minetest.register_node("mystreets:asphalt_hc_tr", {
		description = "HandiCap Parking Top Right",
		tile_images = {
			"mystreets_hc_tr.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

-- HandiCap Parking Bottom Left
	minetest.register_node("mystreets:asphalt_hc_bl", {
		description = "HandiCap Parking Bottom Left",
		tile_images = {
			"mystreets_hc_bl.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

-- HandiCap Parking Bottom Right
	minetest.register_node("mystreets:asphalt_hc_br", {
		description = "HandiCap Parking Bottom Right",
		tile_images = {
			"mystreets_hc_br.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

-- HandiCap Parking Top Left
	minetest.register_node("mystreets:asphalt_hc_tl", {
		description = "HandiCap Parking Top Left",
		tile_images = {
			"mystreets_hc_tl.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png",
			"mystreets_asphalt.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})
