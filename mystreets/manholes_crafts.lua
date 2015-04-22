--Manholes Great
minetest.register_craft({
	output = "mystreets:grate 3",
	recipe = {
		{"default:steel_ingot", "mypaint:paint_brush_white","default:steel_ingot"},
		{"mypaint:paint_brush_white", "default:steel_ingot","mypaint:paint_brush_white"},
		{"default:steel_ingot", "mypaint:paint_brush_white","default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "mystreets:manhole 1",
	recipe = {
		{"", "mystreets:grate",""},
		{"", "mystreets:manhole_shaft",""},
		{"", "",""},
	}
})

minetest.register_craft({
	output = "mystreets:manhole_shaft 2",
	recipe = {
		{"", "mystreets:concrete",""},
		{"mystreets:concrete", "","mystreets:concrete"},
		{"", "mystreets:concrete",""},
	}
})

minetest.register_craft({
	output = "mystreets:manhole_cover_closed 2",
	recipe = {
		{"default:steel_ingot", "default:coal_lump","default:steel_ingot"},
		{"default:coal_lump", "default:steel_ingot","default:coal_lump"},
		{"default:steel_ingot", "default:coal_lump","default:steel_ingot"},
	}
})