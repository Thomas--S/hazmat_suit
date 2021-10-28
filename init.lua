-- support for i18n
local S = armor.get_translator

minetest.register_craftitem("hazmat_suit:helmet_hazmat", {
		description = S("Hazmat Helmet"),
		inventory_image = "hazmat_suit_inv_helmet_hazmat.png",
		stack_max = 1,
})

minetest.register_craftitem("hazmat_suit:chestplate_hazmat", {
		description = S("Hazmat Chestplate"),
		inventory_image = "hazmat_suit_inv_chestplate_hazmat.png",
		stack_max = 1,
})

minetest.register_craftitem("hazmat_suit:sleeve_hazmat", {
		description = S("Hazmat Sleeve"),
		inventory_image = "hazmat_suit_inv_sleeve_hazmat.png",
		stack_max = 1,
})

minetest.register_craftitem("hazmat_suit:leggings_hazmat", {
		description = S("Hazmat Leggins"),
		inventory_image = "hazmat_suit_inv_leggings_hazmat.png",
		stack_max = 1,
})

minetest.register_craftitem("hazmat_suit:boots_hazmat", {
		description = S("Hazmat Boots"),
		inventory_image = "hazmat_suit_inv_boots_hazmat.png",
		stack_max = 1,
})

armor:register_armor("hazmat_suit:suit_hazmat", {
	description = S("Hazmat Suit"),
	inventory_image = "hazmat_suit_inv_suit_hazmat.png",
	groups = {armor_head=1, armor_torso=1, armor_legs=1, armor_feet=1,
		armor_heal=20, armor_fire=4, armor_water=1, armor_use=1000,
		physics_jump=-0.1, physics_speed=-0.2, physics_gravity=0.1},
	armor_groups = {fleshy=35, radiation=50},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
})

minetest.register_craft({
	output = "hazmat_suit:helmet_hazmat",
	recipe = {
		{"", "default:steel_ingot", ""},
		{"default:steel_ingot", "default:glass", "default:steel_ingot"},
		{"techage:vulcanized_rubber", "techage:vulcanized_rubber", "techage:vulcanized_rubber"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:chestplate_hazmat",
	recipe = {
		{"default:tin_ingot", "dye:yellow", "default:tin_ingot"},
		{"default:steel_ingot", "default:tin_ingot", "default:steel_ingot"},
		{"default:tin_ingot", "default:steel_ingot", "default:tin_ingot"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:sleeve_hazmat",
	recipe = {
		{"techage:vulcanized_rubber", "dye:yellow"},
		{"", "default:steel_ingot"},
		{"", "techage:vulcanized_rubber"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:leggings_hazmat",
	recipe = {
		{"techage:vulcanized_rubber", "default:tin_ingot", "techage:vulcanized_rubber"},
		{"default:steel_ingot", "techage:vulcanized_rubber", "default:steel_ingot"},
		{"default:tin_ingot", "", "default:tin_ingot"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:boots_hazmat",
	recipe = {
		{"", "", ""},
		{"techage:vulcanized_rubber", "", "techage:vulcanized_rubber"},
		{"default:steel_ingot", "", "default:steel_ingot"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:suit_hazmat",
	type = "shapeless",
	recipe = {
		"hazmat_suit:helmet_hazmat",
		"hazmat_suit:chestplate_hazmat",
		"hazmat_suit:leggings_hazmat",
		"hazmat_suit:boots_hazmat",
		"hazmat_suit:sleeve_hazmat",
		"hazmat_suit:sleeve_hazmat",
	},
})
