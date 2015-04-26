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

--Sidewalk
minetest.register_node("myconcrete:sidewalk", {
	description = "Sidewalk",
	drawtype = "normal",
	tiles = {"myconcrete_sidewalk.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),
})
--Craft
minetest.register_craft({
	output = "myconcrete:sidewalk 2",
	recipe = {
		{"myconcrete:concrete", "",""},
		{"myconcrete:concrete", "",""},
		{"", "",""},
	}
})

--Concrete
minetest.register_node("myconcrete:concrete", {
	description = "Concrete",
	drawtype = "normal",
	tiles = {"myconcrete_concrete4.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),

})
minetest.register_node("myconcrete:concrete3", {
	description = "Concrete",
	drawtype = "normal",
	tiles = {"myconcrete_concrete3.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "myconcrete:concrete",
	groups = {cracky=1, not_in_creative_inventory = 1},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),

})
minetest.register_node("myconcrete:concrete2", {
	description = "Concrete",
	drawtype = "normal",
	tiles = {"myconcrete_concrete2.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "myconcrete:concrete",
	groups = {cracky=1, not_in_creative_inventory = 1},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),

})
minetest.register_node("myconcrete:concrete1", {
	description = "Concrete",
	drawtype = "normal",
	tiles = {"myconcrete_concrete1.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "myconcrete:concrete",
	groups = {cracky=1, not_in_creative_inventory = 1},
	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),

})
minetest.register_abm({
	nodenames = {"myconcrete:concrete"},
	interval = 180.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "myconcrete:concrete3"})
	end,
})
minetest.register_abm({
	nodenames = {"myconcrete:concrete3"},
	interval = 180.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "myconcrete:concrete2"})
	end,
})
minetest.register_abm({
	nodenames = {"myconcrete:concrete2"},
	interval = 180.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "myconcrete:concrete1"})
	end,
})
--Craft
minetest.register_craft({
	type = "shapeless",
	output = "myconcrete:concrete",
	recipe ={"myconcrete:lime", "default:gravel"},
})

-- Concrete fence
	minetest.register_node("myconcrete:fence_concrete", {
		description = "Concrete fence",
		drawtype = "fencelike",
		tiles = {"myconcrete_concrete.png"},
		paramtype = "light",
		is_ground_content = true,
		selection_box = {
			type = "fixed",
			fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
		},
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
})
--Craft
minetest.register_craft({
	output = "myconcrete:fence_concrete 6",
	recipe = {
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'},
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'}
	}
})

-- Concrete seperating wall
	minetest.register_node("myconcrete:precast_concrete_seperating_wall", {
		description = "Precast concrete seperating wall",
		tile_images = {"myconcrete_concrete.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-5/16, -1/2, -7/16, 5/16, -1/4, 7/16},
				{-1/16, -1/4, -7/16, 1/16, 1/2, 7/16},
				{-3/16, -1/2, -5/16, 3/16, 0, -1/4},
				{-3/16, -1/2, 1/4, 3/16, 0, 5/16}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-5/16, -1/2, -7/16, 5/16, -1/4, 7/16},
				{-1/16, -1/4, -7/16, 1/16, 1/2, 7/16},
				{-3/16, -1/2, -5/16, 3/16, 0, -1/4},
				{-3/16, -1/2, 1/4, 3/16, 0, 5/16}
			}
		}
	})
--Craft
minetest.register_craft({
	output = "myconcrete:precast_concrete_seperating_wall 5",
	recipe = {
		{'', 'myconcrete:concrete', ''},
		{'', 'myconcrete:concrete', ''},
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'}
	}
})
-- Concrete cylinder
	minetest.register_node("myconcrete:precast_concrete_cylinder", {
		description = "Precast concrete cylinder",
		tile_images = {"myconcrete_concrete.png"},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky = 2},
		walkable = false,
		climbable = true,
		node_box = {
			type = "fixed",
			fixed = {
				{3/8, -1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, -3/8, 1/2, 1/2},
				{-1/2, -1/2, 3/8, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{3/8, -1/2, -1/2, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, -3/8, 1/2, 1/2},
				{-1/2, -1/2, 3/8, 1/2, 1/2, 1/2},
				{-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
			}
		}
	})
--Craft
minetest.register_craft({
	output = "myconcrete:precast_concrete_cylinder 8",
	recipe = {
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'},
		{'myconcrete:concrete', '', 'myconcrete:concrete'},
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'}
	}
})
--Sidewalk Ramp
minetest.register_node("myconcrete:ramp_sidewalk", {
	description = "Sidewalk Ramp",
	drawtype = "mesh",
	mesh = "myconcrete_slope.obj",
	tiles = {"myconcrete_sidewalk_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "myconcrete:ramp_sidewalk 2",
	recipe = {
		{"", "",""},
		{"", "","myconcrete:sidewalk"},
		{"", "myconcrete:sidewalk","myconcrete:sidewalk"},
	}
})
minetest.register_node("myconcrete:ramp_sidewalk_long", {
	description = "Sidewalk Ramp Long",
	drawtype = "mesh",
	mesh = "myconcrete_slope_long.obj",
	tiles = {"myconcrete_sidewalk_long_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "myconcrete:ramp_sidewalk_long 2",
	recipe = {
		{"", "",""},
		{"", "","myconcrete:sidewalk"},
		{"myconcrete:sidewalk", "myconcrete:sidewalk","myconcrete:sidewalk"},
	}
})

--Concrete Ramp
minetest.register_node("myconcrete:ramp_concrete", {
	description = "Concrete Ramp",
	drawtype = "mesh",
	mesh = "myconcrete_slope.obj",
	tiles = {"myconcrete_concrete_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox,
	selection_box = slope_cbox
})
--Craft
minetest.register_craft({
	output = "myconcrete:ramp_concrete 2",
	recipe = {
		{"", "",""},
		{"", "","myconcrete:concrete"},
		{"", "myconcrete:concrete","myconcrete:concrete"},
	}
})
minetest.register_node("myconcrete:ramp_concrete_long", {
	description = "concrete Ramp Long",
	drawtype = "mesh",
	mesh = "myconcrete_slope_long.obj",
	tiles = {"myconcrete_concrete_mesh.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 1},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
	collision_box = slope_cbox_long,
	selection_box = slope_cbox_long
})
--Craft
minetest.register_craft({
	output = "myconcrete:ramp_concrete_long 2",
	recipe = {
		{"", "",""},
		{"", "","myconcrete:concrete"},
		{"myconcrete:concrete", "myconcrete:concrete","myconcrete:concrete"},
	}
})

