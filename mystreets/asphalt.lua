local fade = 86400.0 --time for fading
local fadec = 150 -- chance of fading

local asphalt_tab = {
{"mystreets:asphalt1","mystreets:asphalt"},
{"mystreets:asphalt_center_dashed1","mystreets:asphalt_center_dashed"},
{"mystreets:asphalt_center_solid1","mystreets:asphalt_center_solid"},
{"mystreets:asphalt_center_solid_dashed1","mystreets:asphalt_center_solid_dashed"},
{"mystreets:asphalt_center_solid_double1","mystreets:asphalt_center_solid_double"},
{"mystreets:asphalt_center_corner_single1","mystreets:asphalt_center_corner_single"},
{"mystreets:asphalt_center_corner_double1","mystreets:asphalt_center_corner_double"},
{"mystreets:asphalt_side_dashed1","mystreets:asphalt_side_dashed"},
{"mystreets:asphalt_side_solid1","mystreets:asphalt_side_solid"},
{"mystreets:asphalt_ocorner1","mystreets:asphalt_ocorner"},
{"mystreets:asphalt_icorner1","mystreets:asphalt_icorner"},
{"mystreets:ramp_asphalt1","mystreets:ramp_asphalt"},
{"mystreets:ramp_asphalt_long1","mystreets:ramp_asphalt_long"},
{"mystreets:ramp_asphalt_center_dashed1","mystreets:ramp_asphalt_center_dashed"},
{"mystreets:ramp_asphalt_center_dashed_long1","mystreets:ramp_asphalt_center_dashed_long"},
{"mystreets:ramp_asphalt_side_solid_left1","mystreets:ramp_asphalt_side_solid_left"},
{"mystreets:ramp_asphalt_side_solid_left_long1","mystreets:ramp_asphalt_side_solid_left_long"},
{"mystreets:ramp_asphalt_side_solid_right1","mystreets:ramp_asphalt_side_solid_right"},
{"mystreets:ramp_asphalt_side_solid_right_long1","mystreets:ramp_asphalt_side_solid_right_long"},
{"mystreets:ramp_asphalt_center_solid1","mystreets:ramp_asphalt_center_solid"},
{"mystreets:ramp_asphalt_center_solid_long1","mystreets:ramp_asphalt_center_solid_long"},
{"mystreets:ramp_asphalt_center_solid_dashed1","mystreets:ramp_asphalt_center_solid_dashed"},
{"mystreets:ramp_asphalt_center_solid_dashed_long1","mystreets:ramp_asphalt_center_solid_dashed_long"},
{"mystreets:ramp_asphalt_center_double_solid1","mystreets:ramp_asphalt_center_double_solid"},
{"mystreets:ramp_asphalt_center_double_solid_long1","mystreets:ramp_asphalt_center_double_solid_long"},
}
for i in ipairs (asphalt_tab) do 
local existing = asphalt_tab[i][1]
local abms = asphalt_tab[i][2]

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
		{-0.5, -0.5,   -1.5,  0.5, -0.375, 0.5}, 
		{-0.5, -0.375, -1.25, 0.5, -0.25,  0.5},  
		{-0.5, -0.25,  -1,    0.5, -0.125, 0.5},
		{-0.5, -0.125, -0.75, 0.5,  0,     0.5}, 
		{-0.5,  0,     -0.5,  0.5,  0.125, 0.5}, 
		{-0.5,  0.125, -0.25, 0.5,  0.25,  0.5}, 
		{-0.5,  0.25,   0,    0.5,  0.375, 0.5}, 
		{-0.5,  0.375,  0.25, 0.5,  0.5,   0.5}, 
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
	nodenames = {abms},
	interval = fade,
	chance = fadec,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = abms.."2", param2 = node.param2})
	end,
})
minetest.register_abm({
	nodenames = {abms.."2"},
	interval = fade,
	chance = fadec,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = abms.."1", param2 = node.param2})
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

minetest.register_node("mystreets:pothole", {
	description = "Pot Hole",
	drawtype = "nodebox",
	tiles = {
	"mystreets_asphalt1.png^[colorize:white:10^mystreets_pothole_ol.png",
	"mystreets_asphalt1.png^[colorize:white:10",
	"mystreets_asphalt1.png^[colorize:white:10",
	"mystreets_asphalt1.png^[colorize:white:10",
	"mystreets_asphalt1.png^[colorize:white:10",
	"mystreets_asphalt1.png^[colorize:white:10",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:asphalt",
	groups = {cracky=2,not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.25},
			{-0.5, -0.5, 0.25, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.25, 0.5, 0.5},
			{0.25, -0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.1875, -0.0625, 0.5, 0.5},
			{-0.5, -0.5, 0.0625, -0.1875, 0.5, 0.3125},
			{-0.5, -0.5, -0.5, -0.0625, 0.5, -0.1875},
			{-0.5, -0.5, -0.5, -0.1875, 0.5, -0.0625}, 
			{0.0625, -0.5, -0.5, 0.5, 0.5, -0.1875},
			{0.1875, -0.5, -0.5, 0.5, 0.5, -0.0625},
			{0.1875, -0.5, 0.0625, 0.5, 0.5, 0.5},
			{0.0625, -0.5, 0.1875, 0.5, 0.5, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
})
minetest.register_abm({
	nodenames = {"mystreets:asphalt1"},
	interval = 86400.0,
	chance = 150,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:pothole", param2= node.param2})
	end,
})
minetest.register_node("mystreets:potholeb", {
	description = "Pot Hole",
	drawtype = "nodebox",
	tiles = {
	"mystreets_asphalt1.png^[colorize:white:10^mystreets_pothole_olb.png",
	"mystreets_asphalt1.png^[colorize:white:10",
	"mystreets_asphalt1.png^[colorize:white:10",
	"mystreets_asphalt1.png^[colorize:white:10",
	"mystreets_asphalt1.png^[colorize:white:10",
	"mystreets_asphalt1.png^[colorize:white:10",
	},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mystreets:asphalt",
	groups = {cracky=2,not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.125, 0.5}, 
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.4375}, 
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.125, 0.5, -0.25},
			{-0.5, -0.5, -0.5, -0.25, 0.5, -0.125},
			{-0.5, -0.5, 0.1875, -0.3125, 0.5, 0.5},
			{-0.5, -0.5, 0.3125, -0.1875, 0.5, 0.5},
			{0.375, -0.5, -0.5, 0.5, 0.5, 0},
			{0.25, -0.5, -0.5, 0.5, 0.5, -0.1875},
			{0.0625, -0.5, -0.5, 0.5, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.5, 0.5, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	}
})
minetest.register_abm({
	nodenames = {"mystreets:pothole"},
	interval = 86400.0,
	chance = 150,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "mystreets:potholeb", param2= node.param2})
	end,
})
end
end
