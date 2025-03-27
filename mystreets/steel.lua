-- Galvanized steel block
	minetest.register_node("mystreets:galvanized_steel", {
		description = "Galvanized steel",
		tiles = {"mystreets_galvanized_steel.png"},
		drawtype = "normal",
		paramtype = "light",
		groups = {cracky = 2},
		sounds = default.node_sound_stone_defaults(),
	})
--Craft
minetest.register_craft({
	output = "mystreets:galvanized_steel 1",
	recipe = {
		{'default:steelblock', 'mystreets:hardened_steel', ''}
	}
})

-- Galvanized steel fence
	minetest.register_node("mystreets:fence_galvanized_steel", {
		description = "Galvanized steel fence",
		drawtype = "fencelike",
		tiles = {"mystreets_galvanized_steel.png"},
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
	output = "mystreets:fence_galvanized_steel 6",
	recipe = {
		{'mystreets:galvanized_steel', 'mystreets:galvanized_steel', 'mystreets:galvanized_steel'},
		{'mystreets:galvanized_steel', 'mystreets:galvanized_steel', 'mystreets:galvanized_steel'}
	}
})

-- Truss
	minetest.register_node("mystreets:truss", {
		description = "Truss",
		tiles = {"mystreets_truss.png"},
		drawtype = "nodebox",
		paramtype = "light",
		groups = {cracky = 2},
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5, -0.5, 0.375, -0.375, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{0.375, -0.5, -0.5, 0.5, 0.5, -0.375},
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, 0.5, -0.375, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.375, -0.375},
			{-0.5, -0.5, -0.5, -0.375, -0.375, 0.5},
			{0.375, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.5, 0.375, 0.4375, 0.5, 0.5, 0.5},
			{-0.5, 0.375, -0.5, 0.5, 0.5, -0.375},
			{-0.5, 0.375, -0.5, -0.375, 0.5, 0.5},
			{0.375, 0.4375, -0.5, 0.5, 0.5, 0.5},
		}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, 1/2, 1/2}
		}
	})
--Craft
minetest.register_craft({
	output = "mystreets:truss 5",
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
		{'default:steel_ingot', '', 'default:steel_ingot'}
	}
})
	local on_manhole_cover_punched = function(pos, node, puncher)
		if string.find(node.name, "mystreets:manhole_cover") ~= nil then
			local name = node.name
			local state = node.param2
			if name == "mystreets:manhole_cover_opened" then
				node.name = "mystreets:manhole_cover_closed"
				node.param2 = state
			else
				node.name = "mystreets:manhole_cover_opened"
				node.param2 = state
			end
			minetest.env:add_node(pos, {
				name = node.name,
				param2 = node.param2
			})
		end

	end

minetest.register_node("mystreets:manhole_cover_closed", {
		description = "Manhole cover",
		tiles = {
			"mystreets_manhole_cover_top_bottom.png",
			"mystreets_manhole_cover_top_bottom.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, -1/2, -5/16, -3/8, 1/2},
				{-3/16, -1/2, -1/2, -1/16, -3/8, 1/2},
				{1/16, -1/2, -1/2, 3/16, -3/8, 1/2},
				{5/16, -1/2, -1/2, 1/2, -3/8, 1/2},
				{-1/2, -1/2, -1/2, 1/2, -3/8, -3/8},
				{-1/2, -1/2, 3/8, 1/2, -3/8, 1/2},
				{-1/2, -1/2, -1/2, -1/16, -3/8, -5/16},
				{1/16, -1/2, -1/2, 1/2, -3/8, -5/16},
				{-1/2, -1/2, 5/16, -1/16, -3/8, 1/2},
				{1/16, -1/2, 5/16, 1/2, -3/8, 1/2}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, -3/8, 1/2}
		},

		on_punch = on_manhole_cover_punched
	})

	minetest.register_node("mystreets:manhole_cover_opened", {
		tiles = {
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_side.png",
			"mystreets_manhole_cover_top_bottom.png",
			"mystreets_manhole_cover_top_bottom.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		paramtype2 = "facedir",
		groups = {cracky=2},
		drop = "mystreets:manhole_cover_closed",
		node_box = {
			type = "fixed",
			fixed = {
				{-1/2, -1/2, 1/2, -5/16, 1/2, 5/8},
				{-3/16, -1/2, 1/2, -1/16, 1/2, 5/8},
				{1/16, -1/2, 1/2, 3/16, 1/2, 5/8},
				{5/16, -1/2, 1/2, 1/2, 1/2, 5/8},
				{-1/2, -1/2, 1/2, 1/2, -3/8, 5/8},
				{-1/2, 3/8, 1/2, 1/2, 1/2, 5/8},
				{-1/2, -1/2, 1/2, -1/8, -5/16, 5/8},
				{1/16, -1/2, 1/2, 1/2, -5/16, 5/8},
				{-1/2, 5/16, 1/2, -1/16, 1/2, 5/8},
				{1/16, 5/16, 1/2, 1/2, 1/2, 5/8}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, 1/2, 1/2, 1/2, 5/8}
		},

		on_punch = on_manhole_cover_punched
	})
minetest.register_node("mystreets:grate", {
	description = "Grate",
	tiles = {
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png",
			"mystreets_concrete.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=2},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, -0.4375, -0.4375, 0.5},
			{0.4375, -0.5, -0.5, 0.5, -0.4375, 0.5}, 
			{-0.5, -0.5, 0.4375, 0.5, -0.4375, 0.5},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375}, 
			{-0.5, -0.5, -0.375, 0.5, -0.4375, -0.3125},
			{-0.5, -0.5, -0.25, 0.5, -0.4375, -0.1875}, 
			{-0.5, -0.5, -0.125, 0.5, -0.4375, -0.0625},
			{-0.5, -0.5, 0.3125, 0.5, -0.4375, 0.375}, 
			{-0.5, -0.5, 0.1875, 0.5, -0.4375, 0.25}, 
			{-0.5, -0.5, 0.0625, 0.5, -0.4375, 0.125}, 
			}
		},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}
		},

	})

