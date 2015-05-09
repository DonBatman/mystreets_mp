

minetest.register_node("mystreets:road_tar", {
	description = "Road Tar",
	inventory_image = "mystreets_road_tar.png",
	wield_image = "mystreets_road_tar.png",
	tiles = {"mystreets_tar.png"},
	drawtype = "nodebox",
	paramtype = "light",
	stack_max = 500,
	groups = {cracky=2,crumbly=2},
		node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.25, 0.375, -0.4375, 0.25},
			{-0.25, -0.5, -0.375, 0.25, -0.4375, 0.375}, 
			{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
		}
	},
after_place_node = function(pos, placer, itemstack)
	local timer = minetest.get_node_timer(pos)
	timer:start(3)
	end,
on_timer = function(pos)
local asphalt_tab = {
{"mystreets:asphalt1","mystreets:asphalt"},
{"mystreets:asphalt2","mystreets:asphalt"},
{"mystreets:asphalt_center_dashed1","mystreets:asphalt_center_dashed"},
{"mystreets:asphalt_center_dashed2","mystreets:asphalt_center_dashed"},
{"mystreets:asphalt_center_solid1","mystreets:asphalt_center_solid"},
{"mystreets:asphalt_center_solid2","mystreets:asphalt_center_solid"},
{"mystreets:asphalt_center_solid_dashed1","mystreets:asphalt_center_solid_dashed"},
{"mystreets:asphalt_center_solid_dashed2","mystreets:asphalt_center_solid_dashed"},
{"mystreets:asphalt_center_solid_double1","mystreets:asphalt_center_solid_double"},
{"mystreets:asphalt_center_solid_double2","mystreets:asphalt_center_solid_double"},
{"mystreets:asphalt_center_corner_single1","mystreets:asphalt_center_corner_single"},
{"mystreets:asphalt_center_corner_single2","mystreets:asphalt_center_corner_single"},
{"mystreets:asphalt_center_corner_double1","mystreets:asphalt_center_corner_double"},
{"mystreets:asphalt_center_corner_double2","mystreets:asphalt_center_corner_double"},
{"mystreets:asphalt_side_dashed1","mystreets:asphalt_side_dashed"},
{"mystreets:asphalt_side_dashed2","mystreets:asphalt_side_dashed"},
{"mystreets:asphalt_side_solid1","mystreets:asphalt_side_solid"},
{"mystreets:asphalt_side_solid2","mystreets:asphalt_side_solid"},
{"mystreets:asphalt_ocorner1","mystreets:asphalt_ocorner"},
{"mystreets:asphalt_ocorner2","mystreets:asphalt_ocorner"},
{"mystreets:asphalt_icorner1","mystreets:asphalt_icorner"},
{"mystreets:asphalt_icorner2","mystreets:asphalt_icorner"},
{"mystreets:pothole","mystreets:asphalt"},
{"mystreets:potholeb","mystreets:asphalt"},
{"mystreets:ramp_asphalt1","mystreets:ramp_asphalt"},
{"mystreets:ramp_asphalt2","mystreets:ramp_asphalt"},
{"mystreets:ramp_asphalt_long1","mystreets:ramp_asphalt_long"},
{"mystreets:ramp_asphalt_long2","mystreets:ramp_asphalt_long"},
{"mystreets:ramp_asphalt_center_dashed1","mystreets:ramp_asphalt_center_dashed"},
{"mystreets:ramp_asphalt_center_dashed2","mystreets:ramp_asphalt_center_dashed"},
{"mystreets:ramp_asphalt_center_dashed_long1","mystreets:ramp_asphalt_center_dashed_long"},
{"mystreets:ramp_asphalt_center_dashed_long2","mystreets:ramp_asphalt_center_dashed_long"},
{"mystreets:ramp_asphalt_side_solid_left1","mystreets:ramp_asphalt_side_solid_left"},
{"mystreets:ramp_asphalt_side_solid_left2","mystreets:ramp_asphalt_side_solid_left"},
{"mystreets:ramp_asphalt_side_solid_left_long1","mystreets:ramp_asphalt_side_solid_left_long"},
{"mystreets:ramp_asphalt_side_solid_left_long2","mystreets:ramp_asphalt_side_solid_left_long"},
{"mystreets:ramp_asphalt_side_solid_right1","mystreets:ramp_asphalt_side_solid_right"},
{"mystreets:ramp_asphalt_side_solid_right2","mystreets:ramp_asphalt_side_solid_right"},
{"mystreets:ramp_asphalt_side_solid_right_long1","mystreets:ramp_asphalt_side_solid_right_long"},
{"mystreets:ramp_asphalt_side_solid_right_long2","mystreets:ramp_asphalt_side_solid_right_long"},
{"mystreets:ramp_asphalt_center_solid1","mystreets:ramp_asphalt_center_solid"},
{"mystreets:ramp_asphalt_center_solid2","mystreets:ramp_asphalt_center_solid"},
{"mystreets:ramp_asphalt_center_solid_long1","mystreets:ramp_asphalt_center_solid_long"},
{"mystreets:ramp_asphalt_center_solid_long2","mystreets:ramp_asphalt_center_solid_long"},
{"mystreets:ramp_asphalt_center_solid_dashed1","mystreets:ramp_asphalt_center_solid_dashed"},
{"mystreets:ramp_asphalt_center_solid_dashed2","mystreets:ramp_asphalt_center_solid_dashed"},
{"mystreets:ramp_asphalt_center_solid_dashed_long1","mystreets:ramp_asphalt_center_solid_dashed_long"},
{"mystreets:ramp_asphalt_center_solid_dashed_long2","mystreets:ramp_asphalt_center_solid_dashed_long"},
{"mystreets:ramp_asphalt_center_double_solid1","mystreets:ramp_asphalt_center_double_solid"},
{"mystreets:ramp_asphalt_center_double_solid2","mystreets:ramp_asphalt_center_double_solid"},
{"mystreets:ramp_asphalt_center_double_solid_long1","mystreets:ramp_asphalt_center_double_solid_long"},
{"mystreets:ramp_asphalt_center_double_solid_long2","mystreets:ramp_asphalt_center_double_solid_long"},
}
for i in ipairs (asphalt_tab) do 
local existing = asphalt_tab[i][1]
local repair = asphalt_tab[i][2]
		local timer 	=	minetest.get_node_timer(pos)
		local meta 	= 	minetest.get_meta(pos)
		local node 	= 	minetest.get_node(pos)
		local nodeu 	= 	minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z})
	if nodeu.name == existing then
	   minetest.set_node(pos, {name = "air"})	
	   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z}, {name = repair, param2 = nodeu.param2})	
	end
	timer:start(3)	
end
end
})
minetest.register_craft({
	type = "shapeless",
	output = "mystreets:road_tar 50",
	recipe ={"myoil:tar"},
})

