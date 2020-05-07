extends Node


var creature_types = [
	"Demonic",
	"Beast",
	"Celestial",
	"Dragon",
	"Elemental",
	"Fey",
	"Giant",
	"Humanoid",
	"Insect",
	"Machinary",
	"Plant",
	"Undead"
]

var secondary_creatures_type = [
	"Half-",
	"Half-",
	"Half-",
	"Half-",
	"Half-",
	"Poisonous",
	"Mineral",
	"Dwarfed",
	"Sentient",
	"Winged",
	"Aquatic",
	"Amorphous",
	"Corrupted",
	"Spectral"
]

var creature_color_schemes = [
	"Red",
	"Orange",
	"Yellow",
	"Brown",
	"Green",
	"Gray",
	"White",
	"Black",
	"Blue",
	"Purple",
	"Pink",
	"Beige",
]

var creature_attacks = [
	"Glare",
	"Body weight",
	"Headbutts",
	"Sonic Attacks",
	"Grapple/Warp",
	"Charge",
	"Spores",
	"Bite",
	"Bite",
	"Bite",
	"Claws",
	"Claws",
	"Claws",
	"Punches",
	"Punches",
	"Simple weapons",
	"Ranged weapons",
	"Magic",
	"Fire",
	"Vines",
	"Water pressure"
]

var creature_features = [
	"Armor skin",
	"Pointy ears",
	"Long tail",
	"Horns",
	"Peck",
	"Thick fur",
	"Abundance of skin moles",
	"Unusable wings",
	"Cyclop",
	"Round ears",
	"No nose",
	"+2 eyes",
	"+4 limbs",
	"Geometrical skin pattern",
	"Short legs",
	"Long neck",
	"Fast legs",
]

var creature_trivia = [
	"Solitary",
	"Lives in packs",
	"Long range sight",
	"Cruel Predator",
	"Pacific",
	"Territorial",
	"Mischievous",
	"Hive mind",
	"Can assume another shape",
	"Prideful",
	"Submissive",
	"Can climb tree",
]

var current_type = ""

func get_random_result(property : String):
	
	match (property):
		"type":
			current_type = creature_types[randi()% creature_types.size()]
			return current_type
		"secondary_type":
			var sec_type = secondary_creatures_type[randi()% secondary_creatures_type.size()]
			if sec_type == "Half-":
				var half_type = creature_types[randi()% creature_types.size()]
				while half_type == current_type:
					half_type = creature_types[randi()% creature_types.size()]
				sec_type += half_type
			return sec_type
		"color":
			var color1 = creature_color_schemes[randi()% creature_color_schemes.size()]
			var color2 = creature_color_schemes[randi()% creature_color_schemes.size()]
			
			var final = ""
			if color1 == color2:
				var color_rand = randi()%5
				if color_rand == 0:
					final = "Light " + color1
				elif color_rand == 1:
					final = "Dark " + color1
				else:
					final = color1
			else:
				var color_rand = randi()%5
				if color_rand == 0:
					final = "Light " + color1
				elif color_rand == 1:
					final = "Dark " + color1
				else:
					final = color1
				final += " and "
				
				color_rand = randi()%5
				if color_rand == 0:
					final += "Light " + color2
				elif color_rand == 1:
					final += "Dark " + color2
				else:
					final = color2
			
			return final
		"attack":
			return creature_attacks[randi()% creature_attacks.size()]
		"features":
			return creature_features[randi()% creature_features.size()]
		"trivia":
			return creature_trivia[randi()% creature_trivia.size()]
	

