creature = {
	dist: 30,
	dist_reduction: .25,
	nodes: [],
	y_scale: 1,
	x_scale: 1,
	
	
	add_head: function() {
		var _head = instance_create_layer(0, 0, "Instances", o_head, {image_alpha: .5, image_yscale: y_scale});
		array_push(nodes, _head);
	},
	
	add_node: function() {
		var _node = instance_create_layer(0, 0, "Instances", o_body, {image_alpha: .5, image_yscale: y_scale, image_xscale: x_scale, dist: dist - (dist_reduction * array_length(nodes))});
		array_push(nodes, _node);
		y_scale -= .02;
		x_scale -= .01;
	},
	
	update: function() {
		for (var i = 1; i <array_length(nodes); i++) {
			var _prev_node = nodes[i-1];
			var _node = nodes[i];
			var _dir = point_direction(_node.x, _node.y, _prev_node.x, _prev_node.y);
			_node.image_angle = _dir;
			_node.x = _prev_node.x - lengthdir_x(_node.dist, _dir);
			_node.y = _prev_node.y - lengthdir_y(_node.dist, _dir);
		}
	}
}

creature.add_head();

repeat(50) {
	creature.add_node();
}

