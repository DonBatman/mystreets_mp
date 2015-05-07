local slope_cbox = {
	type = "fixed",
	fixed = {
		{-0.5,  -0.5,  -0.5, 0.5, -0.25, 0.5},
		{-0.5, -0.25, -0.25, 0.5,     0, 0.5},
		{-0.5,     0,     0, 0.5,  0.25, 0.5},
		{-0.5,  0.25,  0.25, 0.5,   0.5, 0.5}
	}
}

local slope_cbox_long = {
	type = "fixed",
	fixed = {
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5},  --  NodeBox1
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},  --  NodeBox2
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},  --  NodeBox3
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5},  --  NodeBox4
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5},  --  NodeBox5
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5},  --  NodeBox6
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5},  --  NodeBox7
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5},  --  NodeBox8
	}
}

local asphalt_tab = { --num, desc, imgnum, gro
{"","","","",{cracky = 1}},
{"2","2","^[colorize:white:10",{cracky = 1, not_in_creative_inventory = 1}},
{"1","1","^[colorize:white:20",{cracky = 1, not_in_creative_inventory = 1}},
}
for i in ipairs (asphalt_tab) do
	local num = asphalt_tab[i][1]
	local desc = asphalt_tab[i][2]
	local imgnum = asphalt_tab[i][3]
	local gro = asphalt_tab[i][4]


-- Asphalt block
minetest.register_node("mystreets:asphalt"..num, {
		description = "Asphalt "..desc,
		tile_images = {"mystreets_asphalt3.png"..imgnum},
		drawtype = "normal",
		paramtype = "light",
		drop = "mystreets:asphalt",
		groups = gro,
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
minetest.register_node("mystreets:asphalt_center_dashed"..num, {
		description = "Asphalt with center dashed line "..desc,
		tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_dashed_straight.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_dashed_straight.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_dashed_straight.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_dashed_straight.png"..imgnum
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		drop = "mystreets:asphalt_center_dashed",
		groups = gro,
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

minetest.register_node("mystreets:asphalt_center_solid"..num, {
		description = "Asphalt with center solid line "..desc,
		tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png"..imgnum
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		drop = "mystreets:asphalt_center_solid",
		groups = gro,
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

minetest.register_node("mystreets:asphalt_center_solid_dashed"..num, {
		description = "Asphalt with center solid dashed "..desc,
		tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_dashed.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_dashed.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_dashed.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_dashed.png"..imgnum
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		drop = "mystreets:asphalt_center_solid_dashed",
		groups = gro,
		sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid_dashed","mystreets:asphalt_center_solid_dashed2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid_dashed2", param2= node.param2})
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid_dashed1", param2= node.param2})
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
minetest.register_node("mystreets:asphalt_center_solid_double"..num, {
	description = "Asphalt with center solid double line "..desc,
	tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_double.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_double.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_double.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_double.png"..imgnum
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
		drop = "mystreets:asphalt_center_solid_double",
	groups = gro,
	sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid_double"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid_double2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid_double2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid_double1", param2= node.param2})
	end,
})

-- Asphalt block with center corner single line
minetest.register_node("mystreets:asphalt_center_corner_single"..num, {
	description = "Asphalt with center corner single line "..desc,
	tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_corner.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_corner.png^[transformR90"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_straight.png"..imgnum
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:asphalt_center_cormer_single",
	groups = gro,
	sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid_straight"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid_straight2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_solid_straight2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_solid_straight1", param2= node.param2})
	end,
})

-- Asphalt block with center corner double line
minetest.register_node("mystreets:asphalt_center_corner_double"..num, {
	description = "Asphalt with center corner double line "..desc,
	tile_images = {
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_corner_double.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_corner_double.png^[transformR90"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_double.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_yellow_solid_double.png"..imgnum
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:asphalt_center_corner_double",
	groups = gro,
	sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_corner_double"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_corner_double2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:asphalt_center_corner_double2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_center_corner_double1", param2= node.param2})
	end,
})

-- Asphalt block with side dashed line
minetest.register_node("mystreets:asphalt_side_dashed"..num, {
	description = "Asphalt with side dashed line "..desc,
	tile_images = {
			"mystreets_asphalt3.png^mystreets_line_white_dashed_straight.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_dashed_straight.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_dashed_straight.png^[transformR180"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_dashed_straight.png"..imgnum
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:asphalt_side_dashed",
	groups = gro,
	sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_side_dashed"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_side_dashed2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:asphalt_side_dashed2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_side_dashed1", param2= node.param2})
	end,
})

-- Asphalt block with side solid line
minetest.register_node("mystreets:asphalt_side_solid"..num, {
	description = "Asphalt with side solid line "..desc,
	tile_images = {
			"mystreets_asphalt3.png^mystreets_line_white_solid_straight.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_straight.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_straight.png^[transformR180"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_straight.png"..imgnum
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:asphalt_side_solid",
	groups = gro,
	sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_side_solid"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_side_solid2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:asphalt_side_solid2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_side_solid1", param2= node.param2})
	end,
})

-- Asphalt Outside Corner
minetest.register_node("mystreets:asphalt_ocorner"..num, {
	description = "Asphalt Outside Corner "..desc,
	tile_images = {
			"mystreets_asphalt3.png^mystreets_line_white_solid_ocorner.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_ocorner.png^[transformR90"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_straight.png^[transformR180"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_straight.png"..imgnum
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:asphalt_ocorner",
	groups = gro,
	sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_ocorner"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_ocorner2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:asphalt_ocorner2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_ocorner1", param2= node.param2})
	end,
})


-- Asphalt block Inside Corner
minetest.register_node("mystreets:asphalt_icorner"..num, {
	description = "Asphalt Inside Corner "..desc,
	tile_images = {
			"mystreets_asphalt3.png^mystreets_line_white_solid_icorner.png^[transformR90"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_icorner.png^[transformR180"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_straight.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png"..imgnum,
			"mystreets_asphalt3.png^mystreets_line_white_solid_straight.png^[transformR180"..imgnum
	},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:asphalt_icorner",
	groups = gro,
	sounds = default.node_sound_stone_defaults(),
	})
minetest.register_abm({
	nodenames = {"mystreets:asphalt_icorner"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_icorner2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:asphalt_icorner2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:asphalt_icorner1", param2= node.param2})
	end,
})

-- HandiCap Parking Top Right
	minetest.register_node("mystreets:asphalt_hc_tr", {
		description = "HandiCap Parking Top Right",
		tile_images = {
			"mystreets_hc_tr.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png"
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
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png"
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
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png"
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
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png",
			"mystreets_asphalt3.png"
		},
		drawtype = "normal",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

--Asphalt Ramp
minetest.register_node("mystreets:ramp_asphalt"..num, {
	description = "Asphalt Ramp "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_long_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt1", param2= node.param2})
	end,
})

minetest.register_node("mystreets:ramp_asphalt_long"..num, {
	description = "Asphalt Ramp Long "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_long_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_long",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_long"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_long2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_long2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_long1", param2= node.param2})
	end,
})

--Asphalt Center Dashed Ramp
minetest.register_node("mystreets:ramp_asphalt_center_dashed"..num, {
	description = "Asphalt Center Dashed Ramp "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_center_dashed_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_center_dashed",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_dashed"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_dashed2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_dashed2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_dashed1", param2= node.param2})
	end,
})

minetest.register_node("mystreets:ramp_asphalt_center_dashed_long"..num, {
	description = "Asphalt Center Dashed Ramp Long "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_center_dashed_long_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_center_dashed_long",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_dashed_long"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_dashed_long2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_dashed_long2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_dashed_long1", param2= node.param2})
	end,
})

--Asphalt Side Solid left Ramp
minetest.register_node("mystreets:ramp_asphalt_side_solid_left"..num, {
	description = "Asphalt Side Solid Ramp Left "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_side_solid_left_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_side_solid_left",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_side_solid_left"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_side_solid_left2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_dashed_long2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_side_solid_left1", param2= node.param2})
	end,
})
minetest.register_node("mystreets:ramp_asphalt_side_solid_left_long"..num, {
	description = "Asphalt Side Solid Ramp Left Long "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_side_solid_left_long_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_side_solid_left_long",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_side_solid_left_long"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_side_solid_left_long2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_dashed_long_long2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_side_solid_left_long1", param2= node.param2})
	end,
})

--Asphalt Side Solid Ramp Right
minetest.register_node("mystreets:ramp_asphalt_side_solid_right"..num, {
	description = "Asphalt Side Solid Ramp Right "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_side_solid_right_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_side_solid_right",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_side_solid_right"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_side_solid_right2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_side_solid_right2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_side_solid_right1", param2= node.param2})
	end,
})

minetest.register_node("mystreets:ramp_asphalt_side_solid_right_long"..num, {
	description = "Asphalt Side Solid Ramp Right Long "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_side_solid_right_long_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_side_solid_right_long",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_side_solid_right_long"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_side_solid_right_long2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_side_solid_right_long2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_side_solid_right_long1", param2= node.param2})
	end,
})

--Asphalt Center Solid Ramp 
minetest.register_node("mystreets:ramp_asphalt_center_solid"..num, {
	description = "Asphalt Center Solid Ramp "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_center_solid_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_center_solid",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_solid"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_solid2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_solid2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_solid1", param2= node.param2})
	end,
})
minetest.register_node("mystreets:ramp_asphalt_center_solid_long"..num, {
	description = "Asphalt Center Solid Ramp Long "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_center_solid_long_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_center_solid_long",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_solid_long"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_solid_long2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_solid_long2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_solid_long1", param2= node.param2})
	end,
})

--Asphalt Center Solid and Dashed Ramp
minetest.register_node("mystreets:ramp_asphalt_center_solid_dashed"..num, {
	description = "Asphalt Center Solid Dashed Ramp "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_center_solid_dashed_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_center_solid_dashed",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_solid_dashed"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_solid_dashed2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_solid_dashed2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_solid_dashed1", param2= node.param2})
	end,
})
minetest.register_node("mystreets:ramp_asphalt_center_solid_dashed_long"..num, {
	description = "Asphalt Center Solid Dashed Ramp Long "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_center_solid_dashed_long_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_center_solid_dashed_long",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_solid_dashed_long"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_solid_dashed_long2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_solid_dashed_long2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_solid_dashed_long1", param2= node.param2})
	end,
})
--Asphalt Center Double Solid Ramp 
minetest.register_node("mystreets:ramp_asphalt_center_double_solid"..num, {
	description = "Asphalt Center Double Solid Ramp "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope.obj",
	tiles = {"mystreets_asphalt_center_double_solid_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_center_double_solid",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_double_solid"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_double_solid2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_double_solid2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_double_solid1", param2= node.param2})
	end,
})
minetest.register_node("mystreets:ramp_asphalt_center_double_solid_long"..num, {
	description = "Asphalt Center Double Solid Ramp Long "..desc,
	drawtype = "mesh",
	mesh = "slope_test_slope_long.obj",
	tiles = {"mystreets_asphalt_center_double_solid_long_mesh.png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:ramp_asphalt_center_double_solid_long",
	groups = gro,
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_double_solid_long"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_double_solid_long2", param2= node.param2})
	end,
})

minetest.register_abm({
	nodenames = {"mystreets:ramp_asphalt_center_double_solid_long2"},
	interval = 86400.0,
	chance = 20,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:ramp_asphalt_center_double_solid_long1", param2= node.param2})
	end,
})


end
