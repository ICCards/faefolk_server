extends Node

var minutes_increment = 15

var week_days = ["Mon.","Tue.","Wed.","Thu.","Fri.","Sat.","Sun."]
var seasons = ["spring", "summer", "fall", "winter"]


func _on_timer_timeout():
	get_parent().server_data["time_minutes"] += minutes_increment
	if get_parent().server_data["time_minutes"] == 60:
		get_parent().server_data["time_minutes"] = 0
		get_parent().server_data["time_hours"] += 1
		if get_parent().server_data["time_hours"] == 6:
			advance_crop_day()
		elif get_parent().server_data["time_hours"] == 24:
			advance_day()
		elif get_parent().server_data["time_hours"] == 25:
			get_parent().server_data["time_hours"] = 1
	rpc("set_new_time", get_parent().server_data["time_minutes"], get_parent().server_data["time_hours"])
#		set_date_time()
#		advance_clock_icon()

@rpc 
func set_new_time(minutes,hours): pass

@rpc 
func set_new_day(day_num,day_week): pass

@rpc 
func set_new_season(season): pass

func advance_crop_day(): 
	for chunk in get_parent().world.keys():
		for id in get_parent().world[chunk]["tree"]:
			if Util.isNonFruitTree(get_parent().world[chunk]["tree"][id]["v"]): # if non-fruit tree
				if not str(get_parent().world[chunk]["tree"][id]["p"]) == "5":
					get_parent().world[chunk]["tree"][id]["p"] = Util.return_advanced_tree_phase(get_parent().world[chunk]["tree"][id]["p"])
			else:
				if not get_parent().world[chunk]["tree"][id]["p"] == "harvest" and not get_parent().world[chunk]["tree"][id]["b"] == "snow":
					get_parent().world[chunk]["tree"][id]["p"] = Util.return_advanced_fruit_tree_phase(get_parent().world[chunk]["tree"][id]["p"])
		for id in get_parent().world[chunk]["crop"]: 
			var loc = get_parent().world[chunk]["crop"][id]["l"]
			if not get_parent().world[chunk]["crop"][id]["dww"] == 2: # if crop isn't already dead
				if get_parent().world[chunk]["tile"][loc] == "w": # if crop is watered, advance a day
					get_parent().world[chunk]["crop"][id]["dh"] -= 1 
					get_parent().world[chunk]["crop"][id]["dww"] = 0
				else: 
					get_parent().world[chunk]["crop"][id]["dww"] += 1 # crop not watered
		for tile in get_parent().world[chunk]["tile"]: # if tile is watered, set to not watered
			if get_parent().world[chunk]["tile"][tile] == "w":
				get_parent().world[chunk]["tile"][tile] = "h"
		rpc("refresh_crop_and_tree_chunk", chunk, get_parent().world[chunk]["tree"], get_parent().world[chunk]["crop"], get_parent().world[chunk]["tile"])
#		if Server.world.name == "Overworld": # clear watered tiles if in world
#			Tiles.watered_tiles.clear()

@rpc
func refresh_crop_and_tree_chunk(chunk, tree_dict, crop_dict, tile_dict): pass
	

func advance_day():
	var index = week_days.find(get_parent().server_data["day_week"])
	index += 1
	if index == 7:
		index = 0
	get_parent().server_data["day_week"] = week_days[index] 
	get_parent().server_data["day_number"] += 1
	rpc("set_new_day",get_parent().server_data["day_number"], get_parent().server_data["day_week"])
	if get_parent().server_data["day_number"] == 31:
		advance_season()


func advance_season():
	var index = seasons.find(get_parent().server_data["season"])
	index += 1
	if index == 4:
		index = 0
	var new_szn = seasons[index]
	get_parent().server_data["season"] = new_szn
	get_parent().server_data["day_number"] = 1
	rpc("set_new_season",get_parent().server_data["season"])
	#PlayerData.emit_signal("season_changed")
	

