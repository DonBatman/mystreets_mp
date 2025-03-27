myconcrete = {}
myconcrete.colors = {
	{"red", "Red", "842800ae"},
	{"green", "Green", "0c4916b3"},
	{"white", "White", "ffffffb3"},
	{"black","Black","000000"},
	{"blue","Blue","0B0B3B"},
	{"brown","Brown","190B07"},
	{"cyan","Cyan","00a4e8"},
	{"darkgreen","Dark Green","071907"},
	{"darkgrey","Dark Grey","1C1C1C"},
	{"grey","Grey","848484"},
	{"magenta","Magenta","e8008e"},
	{"orange","Orange","e8b400"},
	{"pink","Pink","FE2E9A"},
	{"violet","Violet","08088A"},
	{"yellow","Yellow","f4dd1b"},
}

dofile(minetest.get_modpath("myconcrete").."/concrete.lua")
dofile(minetest.get_modpath("myconcrete").."/limestone.lua")
dofile(minetest.get_modpath("myconcrete").."/mapgen.lua")
dofile(minetest.get_modpath("myconcrete").."/aliases.lua")
dofile(minetest.get_modpath("myconcrete").."/nodes.lua")
--dofile(minetest.get_modpath("myconcrete").."/machine.lua")

--if minetest.get_modpath("mypaint") then
--dofile(minetest.get_modpath("myconcrete").."/paint.lua")
--end
local paintables = {			
	"myconcrete:concrete",
	"myconcrete:fence_concrete",
	"myconcrete:precast_concrete_cylinder",
	"myconcrete:precast_concrete_seperating_wall",
	"myconcrete:ramp_concrete",
	"myconcrete:ramp_concrete_long",
	"myconcrete:ramp_sidewalk",
	"myconcrete:ramp_sidewalk_long",
	"myconcrete:sidewalk",
}

local colors = {}
for _, entry in ipairs(myconcrete.colors) do
	table.insert(colors, entry[1])
end

mypaint.register(paintables, colors)
