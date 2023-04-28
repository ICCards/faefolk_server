class_name  Tile_Template

var atlas;
var edges = [];
var top = [];
var bottom = [];
var left = [];
var right = [];

func compare_edge(a, b) -> bool:
	return a == b;


func reverse_string(s) -> String:
	var r := "" 
	for i in range(s.length()-1, -1, -1):
		r += s[i]
	return r

func analyze(tiles) :
	for tile in tiles:		
		#TOP
		if compare_edge(tile.edges[1],edges[0]):
			top.append(tile)
		#BOTTOM
		if compare_edge(tile.edges[0],edges[1]):
			top.append(tile)
		#LEFT
		if compare_edge(tile.edges[3],edges[2]):
			top.append(tile)
		#RIGHT
		if compare_edge(tile.edges[2],edges[3]):
			top.append(tile)
		
		
		
