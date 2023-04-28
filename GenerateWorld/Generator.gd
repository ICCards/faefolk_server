extends Node

@onready var template_tilemap = $Templates;

const width := 8
const height := 8

var cells = [];
var collaspsed_cells = [];

var templates = [];

var sand = Tile_Template.new();
var grass = Tile_Template.new();
var water = Tile_Template.new();
var sand_grass = Tile_Template.new();
var grass_sand = Tile_Template.new();
var water_sand = Tile_Template.new();

var cell_count = 0;

func _ready():
	
	var tile_set = template_tilemap.tile_set;
	
	var sand_pattern = tile_set.get_pattern(0);
	var grass_pattern = tile_set.get_pattern(4);
	var water_pattern = tile_set.get_pattern(5);
	var sand_grass_pattern = tile_set.get_pattern(1);
	var grass_sand_pattern = tile_set.get_pattern(2);
	var water_sand_pattern = tile_set.get_pattern(3);
	
	sand.atlas = sand_pattern;
	grass.atlas = grass_pattern;
	water.atlas = water_pattern;
	sand_grass.atlas = sand_grass_pattern;
	grass_sand.atlas = grass_sand_pattern;
	water_sand.atlas = water_sand_pattern;
	
	# index order 0-3 is top, bottom, left, right
	sand.edges = ["sand","sand","sand","sand"];
	grass.edges = ["grass","grass","grass","grass"];
	water.edges = ["water","water","water","water"];
	sand_grass.edges = ["sand_grass","sand_grass","sand","grass"];
	grass_sand.edges = ["grass_sand","grass_sand","grass","sand"];
	water_sand.edges = ["water_sand","water_sand","water","sand"];

	templates.append(sand);
	templates.append(grass);
	templates.append(water);
	templates.append(sand_grass);
	templates.append(grass_sand);
	templates.append(water_sand);
	
	sand.analyze(templates);
	grass.analyze(templates);
	water.analyze(templates);
	sand_grass.analyze(templates);
	grass_sand.analyze(templates);
	water_sand.analyze(templates);

	for x in width:
		for y in height:
			var cell = Cell.new();
			cell.options = templates;
			cell.vector = Vector2i(x,y);
			cell.top_nieghbor_vector = template_tilemap.get_neighbor_cell(cell.vector,TileSet.CELL_NEIGHBOR_TOP_SIDE);
			cell.bottom_nieghbor_vector = template_tilemap.get_neighbor_cell(cell.vector,TileSet.CELL_NEIGHBOR_BOTTOM_SIDE);
			cell.left_nieghbor_vector = template_tilemap.get_neighbor_cell(cell.vector,TileSet.CELL_NEIGHBOR_LEFT_SIDE);
			cell.right_nieghbor_vector = template_tilemap.get_neighbor_cell(cell.vector,TileSet.CELL_NEIGHBOR_RIGHT_SIDE);
			cells.append(cell);		
	for cell in cells:
		cell_count = cell_count + 1;
		print(str(cell_count)+"/"+str(cells.size()));
		cell.options = [cell.options.pick_random()];
		cell.isCollaspsed = true;
		collaspsed_cells.append(cell);
		start_collasping();
	draw();	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func start_collasping():
	for cell in cells:
		if !cell.isCollaspsed:
			var top = get_cell_by_vector(cell.top_nieghbor_vector);
			var bottom = get_cell_by_vector(cell.bottom_nieghbor_vector);
			var left = get_cell_by_vector(cell.left_nieghbor_vector);
			var right = get_cell_by_vector(cell.right_nieghbor_vector);
			cell.check_neighbors(top,bottom,left,right)
	cells.sort_custom(func(a, b): return a.options.size() > b.options.size());

func get_cell_by_vector(vector):
	cells.filter(func(a): return a.vector == vector);
	return cells.front();			
	
func draw():
	var cell = collaspsed_cells[0];
	var cell2 = collaspsed_cells[1];
	template_tilemap.set_pattern(0,cell.vector,cell.options.front().atlas);
	template_tilemap.set_pattern(0,Vector2i(0,4),cell2.options.front().atlas);
#	for cell in collaspsed_cells:
#		template_tilemap.set_pattern(0,cell.vector,cell.options.front().atlas)	
