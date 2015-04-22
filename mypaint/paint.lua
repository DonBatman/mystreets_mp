
local dye_colour = {
--	{"Black","black"},
	{"Blue","blue"},
--	{"Brown","brown"},
--	{"Cyan","cyan"},
--	{"Dark Green","dark_green"},
--	{"Dark Grey","dark_grey"},
--	{"Green","green"},
--	{"Grey","grey"},
--	{"Magenta","magenta"},
--	{"Orange","orange"},
--	{"Pink","pink"},
	{"Red","red"},
--	{"Violet","violet"},
	{"White","white"},
	{"Yellow","yellow"},
}


for i in ipairs(dye_colour) do
	local pcolour = dye_colour[i][1]
	local colour = dye_colour[i][2]

--Paint Brush
minetest.register_craftitem("mypaint:paint_brush", {
	description = "Paint Brush",
	inventory_image = "mypaint_paint_brush.png",

})

--Craft
minetest.register_craft({
	output = "mypaint:paint_brush 9",
	recipe = {
		{"wool:white"},
		{"default:steel_ingot"},
		{"default:stick"},
	}
})

--Paint Brush colored
minetest.register_craftitem("mypaint:paint_brush_"..colour.."", {
	description = "Paint Brush "..pcolour,
	inventory_image = "mypaint_paint_brush_"..colour..".png",

})
--Craft
minetest.register_craft({
	output = "mypaint:paint_brush_"..colour.." 9",
	recipe = {
		{"mypaint:paint_brush", "mypaint:paint_"..colour..""}
	}
})

--Paint White

minetest.register_craftitem("mypaint:paint_"..colour.."", {
	description = "Paint "..pcolour,
	inventory_image = "mypaint_paint_can_"..colour..".png",

})

--Craft
minetest.register_craft({
	output = "mypaint:paint_"..colour.." 9",
	recipe = {
		{"myoil:bucket_oil", "dye:"..colour..""}
	}
})

end

