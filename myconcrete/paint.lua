--[[
myconcrete = {}

myconcrete.colors = {
	{"black",      "Black",      "#000000b0"},
	{"blue",       "Blue",       "#015dbb70"},
	{"brown",      "Brown",      "#a78c4570"},
	{"cyan",       "Cyan",       "#01ffd870"},
	{"darkgreen", "Dark Green",  "#005b0770"},
	{"darkgrey",  "Dark Grey",   "#303030b0"},
	{"green",      "Green",      "#61ff0170"},
	{"grey",       "Grey",       "#5b5b5bb0"},
	{"magenta",    "Magenta",    "#ff05bb70"},
	{"orange",     "Orange",     "#ff840170"},
	{"pink",       "Pink",       "#ff65b570"},
	{"red",        "Red",        "#ff000070"},
	{"violet",     "Violet",     "#2000c970"},
	{"white",      "White",      "#abababc0"},
	{"yellow",     "Yellow",     "#e3ff0070"},
}

local paintables = {
	"myconcrete:concrete",
--	"myconcrete:fence_concrete",
--	"myconcrete:precast_concrete_cylinder",
--	"myconcrete:precast_concrete_seperating_wall",
--	"myconcrete:ramp_concrete",
--	"myconcrete:ramp_concrete_long",
--	"myconcrete:ramp_sidewalk",
--	"myconcrete:ramp_sidewalk_long",
--	"myconcrete:sidewalk"
}

for _, entry in ipairs(myconcrete.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]

minetest.register_node("myconcrete:concrete_" .. color, {
	description = desc .. " Concrete",
	tiles = {"myconcrete_concrete.png".. paint},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2},
	sounds = default.node_sound_wood_defaults(),
})
end
if minetest.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(myconcrete.colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end
--]]
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
