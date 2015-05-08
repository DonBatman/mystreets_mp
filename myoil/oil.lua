-----------------------------------------------------------------------------
--Oil
-----------------------------------------------------------------------------
minetest.register_node("myoil:oil_flowing", {
	description = "Flowing Oil",
	inventory_image = minetest.inventorycube("myoil_oil.png"),
	drawtype = "flowingliquid",
	tiles = {"myoil_oil.png"},
	special_tiles = {
		{
			image="myoil_oil_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=4.0}
		},

	},
	alpha = 250, 
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "myoil:oil_flowing",
	liquid_alternative_source = "myoil:oil_source",
	liquid_viscosity = 3,
	liquid_renewable = true,
	liquid_range = 3,
	damage_per_second = 1, 
	post_effect_color = {a=250, r=0, g=0, b=0},
	groups = {liquid=2, not_in_creative_inventory=1},
})

minetest.register_node("myoil:oil_source", {
	description = "Oil Source",
	inventory_image = minetest.inventorycube("myoil_oil_inv.png"),
	drawtype = "liquid",
	light_source = 14,
	tiles = {
		{name="myoil_oil_source_animated.png", 
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=2.0}}
	},

	alpha = 250,
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = true,
	drop = "myoil:oil_source",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "myoil:oil_flowing",
	liquid_alternative_source = "myoil:oil_source",
	liquid_viscosity = 3,
	liquid_renewable = false,
	liquid_range = 2,
	damage_per_second = 1, 
	post_effect_color = {a=250, r=0, g=0, b=0},
	groups = {liquid=2},
})
--------------------------------------------------------------------------------
--Oil Barrel
--------------------------------------------------------------------------------
--empty
minetest.register_node("myoil:barrel_empty", {
	description = "Oil Barrel",
	drawtype = "mesh",
	mesh = "myoil_cylinder.obj",
	tiles = {"myoil_oil_barrel_mesh.png"},
	stack_max = 1,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})
--Craft
minetest.register_craft({
		output = "myoil:barrel_empty 1",
		recipe = {
			{"default:steel_ingot","","default:steel_ingot"},
			{"default:steel_ingot","","default:steel_ingot"},
			{"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
			}
	})

--full
minetest.register_node("myoil:oil_barrel", {
	description = "Oil Barrel",
	drawtype = "mesh",
	mesh = "myoil_cylinder.obj",
	tiles = {"myoil_oil_barrel_mesh.png"},
	stack_max = 1,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})
--Craft
minetest.register_craft({
		output = "myoil:oil_barrel 1",
		recipe = {
			{"myoil:bucket_oil","myoil:bucket_oil","myoil:bucket_oil"},
			{"myoil:bucket_oil","myoil:oil_barrel_empty","myoil:bucket_oil"},
			{"myoil:bucket_oil","myoil:bucket_oil","myoil:bucket_oil"},
			}
	})
--------------------------------------------------------------------------------
--Tar
--------------------------------------------------------------------------------

minetest.register_node("myoil:tar", {
	description = "Tar",
	tiles = {"myoil_tar.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {crumbly = 2},
})
--Craft
minetest.register_craft({
		type = "cooking",
		output = "myoil:tar 10",
		recipe = "myoil:oil_barrel",
		cooktime = 5
	})
--Craft
minetest.register_craft({
		type = "cooking",
		output = "myoil:tar 1",
		recipe = "myoil:bucket_oil",
		cooktime = 5,
		replacements = {{"myoil:bucket_oil", "bucket:bucket_empty"}},
	})

minetest.register_node("myoil:tar_barrel", {
	description = "Tar Barrel",
	drawtype = "mesh",
	mesh = "myoil_cylinder.obj",
	tiles = {"myoil_tar_barrel_mesh.png"},
	stack_max = 1,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})
--Craft
minetest.register_craft({
		output = "myoil:tar_barrel 1",
		recipe = {
			{"myoil:tar","myoil:tar","myoil:tar"},
			{"myoil:tar","myoil:barrel_empty","myoil:tar"},
			{"myoil:tar","myoil:tar","myoil:tar"},
			}
	})
---------------------------------------------------------------------------
--Oil Bucket
---------------------------------------------------------------------------
bucket.register_liquid(
	"myoil:oil_source",
	"myoil:oil_flowing",
	"myoil:bucket_oil",
	"myoil_bucket_oil.png",
	"Oil Bucket"
)
bucket.register_liquid(
	"myoil:oil_flowing",
	"myoil:oil_flowing",
	"myoil:bucket_oil",
	"myoil_bucket_oil.png",
	"Oil Bucket"
)
---------------------------------------------------------------------------
--Fuel Sources
---------------------------------------------------------------------------

minetest.register_craft({
	type = "fuel",
	recipe = "myoil:bucket_oil",
	burntime = 60,
	replacements = {{"myoil:bucket_oil", "bucket:bucket_empty"}},
})
minetest.register_craft({
	type = "fuel",
	recipe = "myoil:oil_barrel",
	burntime = 600,
})
minetest.register_craft({
	type = "fuel",
	recipe = "myoil:tar",
	burntime = 90,
})
minetest.register_craft({
	type = "fuel",
	recipe = "myoil:tar_barrel",
	burntime = 900,
})

----------------------------------------------------------------------------
--Turn Oil to Tar when near lava
----------------------------------------------------------------------------

minetest.register_abm({
	nodenames = {"myoil:oil_flowing","myoil:oil_source"},
	neighbors = {"default:lava_flowing","default:lava_source"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos,{name = "myoil:tar"})
	end,
})

