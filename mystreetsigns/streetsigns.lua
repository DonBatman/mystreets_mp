minetest.register_node("mysigns:stop_sign", {
	description = "Stop Sign",
	tiles = {
		"mystreets_stop_tnb.png",
		"mystreets_stop_tnb.png",
		"mystreets_stop_right.png",
		"mystreets_stop_left.png",
		"mystreets_stop_back.png",
		"mystreets_stop_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125}, 
			{-0.25, -0.5, -0.1875, 0.25, 0.5, -0.125}, 
			{-0.5, -0.25, -0.1875, 0.5, 0.25, -0.125}, 
			{-0.4375, -0.3125, -0.1875, 0.4375, 0.3125, -0.125}, 
			{-0.375, -0.375, -0.1875, 0.375, 0.375, -0.125}, 
			{-0.3125, -0.4375, -0.1875, 0.3125, 0.4375, -0.125}, 
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625}, 
			{-0.125, -0.5, -0.125,0.125,0.5,0},
		}
	},

})
--Craft
minetest.register_craft({
	output = "mysigns:stop_sign 2",
	recipe = {
		{"mypaint:paint_brush_red", "group:wood","mystreets:lightpost"},
		{"mypaint:paint_brush_white", "group:wood","mystreets:lightpost"},
		{"mypaint:paint_brush_red", "group:wood","mystreets:lightpost"},
	}
})

minetest.register_node("mysigns:yeild_sign", {
	description = "Yeild Sign",
	tiles = {
		"mystreets_stop_tnb.png",
		"mystreets_stop_tnb.png",
		"mystreets_stop_right.png",
		"mystreets_stop_left.png",
		"mystreets_yeild_back.png",
		"mystreets_yeild_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.125, 0.0625, 0.5, 0.125}, 
			{-0.25, -0.1875, -0.1875, 0.25, 0.5, -0.125}, 
			{-0.5, 0.3125, -0.1875, 0.5, 0.4375, -0.125}, 
			{-0.4375, 0.1875, -0.1875, 0.4375, 0.5, -0.125}, 
			{-0.375, 0.0625, -0.1875, 0.375, 0.375, -0.125}, 
			{-0.3125, -0.0625, -0.1875, 0.3125, 0.4375, -0.125}, 
			{-0.125, -0.5, -0.0625, 0.125, 0.5, 0.0625}, 
			{-0.1875, -0.3125, -0.1875, 0.1875, 0.5, -0.125}, 
			{-0.125, -0.375, -0.1875, 0.125, 0.5, -0.125}, 
		}
	},

})
--Craft
minetest.register_craft({
	output = "mysigns:yeild_sign 2",
	recipe = {
		{"mypaint:paint_brush_white", "group:wood","mystreets:lightpost"},
		{"mypaint:paint_brush_red", "group:wood","mystreets:lightpost"},
		{"mypaint:paint_brush_white", "group:wood","mystreets:lightpost"},
	}
})


