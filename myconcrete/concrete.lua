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

local sep_wall_cbox = {
	type = "fixed",
	fixed = {
		{-5/16, -1/2, -7/16, 5/16, -1/4, 7/16},
		{-1/16, -1/4, -7/16, 1/16, 1/2, 7/16},
		{-3/16, -1/2, -5/16, 3/16, 0, -1/4},
		{-3/16, -1/2, 1/4, 3/16, 0, 5/16}
	}
}

local cyl_cbox = {
	type = "fixed",
	fixed = {
		{3/8, -1/2, -1/2, 1/2, 1/2, 1/2},
		{-1/2, -1/2, -1/2, -3/8, 1/2, 1/2},
		{-1/2, -1/2, 3/8, 1/2, 1/2, 1/2},
		{-1/2, -1/2, -1/2, 1/2, 1/2, -3/8}
	}
}
local fence_cbox = {
	type = "fixed",
	fixed = {-1/8, -1/2, -1/8, 1/8, 1/2, 1/8},
}

local item_tab = { -- mat, descr, img, dtype, cbox
{"sidewalk","Sidewalk","sidewalk","","normal",""},
{"concrete","Concrete","concrete","","normal",""},

{"ramp_sidewalk",	"Sidewalk Ramp",	"sidewalk_mesh",	"myconcrete_slope.obj","mesh",slope_cbox},
{"ramp_sidewalk_long",	"Sidewalk Ramp Long",	"sidewalk_long_mesh",	"myconcrete_slope_long.obj","mesh",slope_cbox_long},

{"ramp_concrete","Concrete Ramp","concrete_mesh","myconcrete_slope.obj","mesh",slope_cbox},
{"ramp_concrete_long","Concrete Ramp Long","concrete_mesh","myconcrete_slope_long.obj","mesh",slope_cbox_long},

{"precast_concrete_seperating_wall",	"Seperation Wall",	"concrete",	"","nodebox",sep_wall_cbox},
{"precast_concrete_cylinder",	"Concrete Cylinder",	"concrete",	"","nodebox",cyl_cbox},
{"fence_concrete",	"Concrete Fence",	"concrete",	"","fencelike",fence_cbox},
}
for i in ipairs (item_tab) do
	local mat = item_tab[i][1]
	local descr = item_tab[i][2]
	local img = item_tab[i][3]
	local obj = item_tab[i][4]
	local dtype = item_tab[i][5]
	local cbox = item_tab[i][6]

local concrete_tab = { --num, desc, imgnum, gro
{"","","",{cracky = 1}},
{"3","3","^[colorize:black:100",{cracky = 1, not_in_creative_inventory = 1}},
{"2","2","^[colorize:black:50",{cracky = 1, not_in_creative_inventory = 1}},
{"1","1","^[colorize:black:25",{cracky = 1, not_in_creative_inventory = 1}},
}
for i in ipairs (concrete_tab) do
	local num = concrete_tab[i][1]
	local desc = concrete_tab[i][2]
	local imgnum = concrete_tab[i][3]
	local gro = concrete_tab[i][4]



minetest.register_node("myconcrete:"..mat..num, {
	description = descr..desc,
	drawtype = dtype,
	mesh = obj,
	tiles = {"myconcrete_"..img..".png"..imgnum},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "myconcrete:"..mat,
	groups = gro,
--	stack_max = 250,
	sounds = default.node_sound_stone_defaults(),
	node_box = cbox,
	selection_box = cbox,
	collision_box = cbox,

after_place_node = function(pos, placer, itemstack, pointed_thing)
	local node = minetest.get_node(pos)
--	if node == "myconcrete:"..mat then
	   minetest.set_node(pos, {name = "myconcrete:"..mat.."3", param2 = node.param2})
--	end
end,
})


minetest.register_abm({
	nodenames = {"myconcrete:"..mat.."3"},
	interval = 180.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "myconcrete:"..mat.."2", param2 = node.param2})
	end,
})
minetest.register_abm({
	nodenames = {"myconcrete:"..mat.."2"},
	interval = 180.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "myconcrete:"..mat.."1", param2 = node.param2})
	end,
})
minetest.register_abm({
	nodenames = {"myconcrete:"..mat.."1"},
	interval = 180.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "myconcrete:"..mat, param2 = node.param2})
	end,
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
--Craft
minetest.register_craft({
	type = "shapeless",
	output = "myconcrete:concrete",
	recipe ={"myconcrete:lime", "default:gravel"},
})

--Craft
minetest.register_craft({
	output = "myconcrete:fence_concrete 6",
	recipe = {
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'},
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'}
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

--Craft
minetest.register_craft({
	output = "myconcrete:precast_concrete_cylinder 8",
	recipe = {
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'},
		{'myconcrete:concrete', '', 'myconcrete:concrete'},
		{'myconcrete:concrete', 'myconcrete:concrete', 'myconcrete:concrete'}
	}
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
--Craft
minetest.register_craft({
	output = "myconcrete:ramp_sidewalk_long 2",
	recipe = {
		{"", "",""},
		{"", "","myconcrete:sidewalk"},
		{"myconcrete:sidewalk", "myconcrete:sidewalk","myconcrete:sidewalk"},
	}
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


--Craft
minetest.register_craft({
	output = "myconcrete:ramp_concrete_long 2",
	recipe = {
		{"", "",""},
		{"", "","myconcrete:concrete"},
		{"myconcrete:concrete", "myconcrete:concrete","myconcrete:concrete"},
	}
})

end
end
