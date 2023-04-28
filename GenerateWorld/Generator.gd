extends Node
	
var template1 = Tile_Template.new();
var template2 = Tile_Template.new();
var template3 = Tile_Template.new();
var template4 = Tile_Template.new();
var template5 = Tile_Template.new();
var template6 = Tile_Template.new();

var templates = [template1,template2,template3,template4,template5,template6];

#var cell = Cell.new();

#var edges = ["water","sand","dirt","grass","forest","snow"];

# Called when the node enters the scene tree for the first time.
func _ready():
	# index order 0-3 is top, bottom, left, right
	template1.edges = ["water","sand","dirt","grass"];
	template2.edges = ["water","sand","dirt","grass"];
	template3.edges = ["water","sand","dirt","grass"];
	template4.edges = ["water","sand","dirt","grass"];
	template5.edges = ["water","sand","dirt","grass"];
	template6.edges = ["water","sand","dirt","grass"];
	
	template1.analyze(templates);
	template2.analyze(templates);
	template3.analyze(templates);
	template4.analyze(templates);
	template5.analyze(templates);
	template6.analyze(templates);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
