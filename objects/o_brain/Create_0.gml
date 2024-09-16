creature = {
	dist: 30,
	nodes: [],
	y_scale: 1,
	x_scale: 1,
	alpha: .6,
	
	
	add_head: function() {
		var _head = instance_create_layer(0, 0, "Instances", o_head, {image_alpha: alpha, image_yscale: y_scale});
		array_push(nodes, _head);
	},
	
	add_node: function() {
		var _node = instance_create_layer(0, 0, "Instances", o_body, {image_alpha: alpha, image_yscale: y_scale, image_xscale: x_scale, dist: dist});
		array_push(nodes, _node);
		y_scale -= .02;
		x_scale -= .01;
		dist -= .25;
		alpha -= .01;
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

for (var i = 0; i < array_length(creature.nodes); i++) {
	var _node = creature.nodes[i];
	with (_node) {
		TweenFire(id, "outQuad", "loop", true, i*.02, 2, "bulb_alpha", 1, bulb_alpha_base);
	}
}

