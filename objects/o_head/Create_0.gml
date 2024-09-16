path_speed = 2;

path_start(path_1, path_speed, path_action_continue, true);

bulb_alpha = .5 * image_alpha;
bulb_alpha_base = bulb_alpha;

//TweenFire(id, "outQuad", "loop", true, 1, 1, "bulb_alpha", 1, bulb_alpha_base);