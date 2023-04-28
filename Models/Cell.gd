class_name Cell
var vector = Vector2i(0,0);
var top_nieghbor_vector;
var bottom_nieghbor_vector;
var left_nieghbor_vector;
var right_nieghbor_vector;
var isCollaspsed = false;
var options = [];

func check_neighbors(top,bottom,left,right):
	for tile in top.options:
		options.filter(func(_tile) : return tile.bottom == _tile.top);
		
	for tile in bottom.options:
		options.filter(func(_tile) : return tile.top == _tile.bottom);
		
	for tile in left.options:
		options.filter(func(_tile) : return tile.right == _tile.left);
		
	for tile in right.options:
		options.filter(func(_tile) : return tile.left == _tile.right);
	
