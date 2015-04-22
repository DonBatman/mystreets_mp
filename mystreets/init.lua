dofile(minetest.get_modpath("mystreets").."/asphalt.lua")
dofile(minetest.get_modpath("mystreets").."/asphalt_crafts.lua")
dofile(minetest.get_modpath("mystreets").."/lights.lua")
--dofile(minetest.get_modpath("mystreets").."/mapgen.lua")
--dofile(minetest.get_modpath("mystreets").."/oil.lua")
dofile(minetest.get_modpath("mystreets").."/posts.lua")
dofile(minetest.get_modpath("mystreets").."/steel.lua")
dofile(minetest.get_modpath("mystreets").."/ramps.lua")
--dofile(minetest.get_modpath("mystreets").."/streetsigns.lua")
dofile(minetest.get_modpath("mystreets").."/traffic_light.lua")	
dofile(minetest.get_modpath("mystreets").."/manholes.lua")
dofile(minetest.get_modpath("mystreets").."/manholes_crafts.lua")	
dofile(minetest.get_modpath("mystreets").."/sewerwater.lua")	
print("mystreets mod loaded succesfully!")

if minetest.get_modpath("myconcrete") then
return nil
else
dofile(minetest.get_modpath("mystreets").."/concrete.lua")
end


if minetest.get_modpath("moreblocks") then

        stairsplus:register_all(
                "mystreets",
                "asphalt",
                "mystreets:asphalt",
                {
                        description = "Asphalt",
                        tiles = {"mystreets_asphalt.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_center_dashed",
                "mystreets:asphalt_center_dashed",
                {
                        description = "Asphalt with center dashed line",
                        tiles = {"mystreets_asphalt_center_dashed.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_center_solid",
                "mystreets:asphalt_center_solid",
                {
                        description = "Asphalt with center solid line",
                        tiles = {"mystreets_asphalt_center_solid.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_center_solid_dashed",
                "mystreets:asphalt_center_solid_dashed",
                {
                        description = "Asphalt with center solid dashed line",
                        tiles = {"mystreets_asphalt_center_solid_dashed.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_center_solid_double",
                "mystreets:asphalt_center_solid_double",
                {
                        description = "Asphalt with center solid double line",
                        tiles = {"mystreets_asphalt_center_solid_double.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_center_corner_single",
                "mystreets:asphalt_center_corner_single",
                {
                        description = "Asphalt with center corner single line",
                        tiles = {"mystreets_asphalt_center_corner_single.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_center_corner_double",
                "mystreets:asphalt_center_corner_double",
                {
                        description = "Asphalt with center corner double line",
                        tiles = {"mystreets_asphalt_center_corner_double.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_side_dashed",
                "mystreets:asphalt_side_dashed",
                {
                        description = "Asphalt with side dashed line",
                        tiles = {"mystreets_asphalt_side_dashed.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_side_solid",
                "mystreets:asphalt_side_solid",
                {
                        description = "Asphalt with side solid line",
                        tiles = {"mystreets_asphalt_side_solid.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_ocorner",
                "mystreets:asphalt_ocorner",
                {
                        description = "Asphalt Outside Corner",
                        tiles = {"mystreets_asphalt_ocorner.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "asphalt_icorner",
                "mystreets:asphalt_icorner",
                {
                        description = "Asphalt Inside Corner",
                        tiles = {"mystreets_asphalt_icorner.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "sidewalk",
                "mystreets:sidewalk",
                {
                        description = "Sidewalk",
                        tiles = {"mystreets_sidewalk.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "concrete",
                "mystreets:concrete",
                {
                        description = "Concrete",
                        tiles = {"mystreets_concrete.png"},
                        groups = {cracky=1},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "galvanized_steel",
                "mystreets:galvanized_steel",
                {
                        description = "Galvanized Steel",
                        tiles = {"mystreets_galvanized_steel.png"},
                        groups = {cracky=2},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

        stairsplus:register_all(
                "mystreets",
                "truss",
                "mystreets:truss",
                {
                        description = "Truss",
                        tiles = {"mystreets_truss.png"},
                        groups = {cracky=2},
                        sounds = default.node_sound_stone_defaults(),
                }
        )

end
