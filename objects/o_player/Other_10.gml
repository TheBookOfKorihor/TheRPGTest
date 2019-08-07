/// @description Move State
// You can write your code in this editor
//Move State

image_speed = 0;
var _animation_speed = 1;
var _x_input =  keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input =  keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_direction_ = point_direction( 0,0, _x_input, _y_input);

var _attack_input = keyboard_check_pressed(vk_space);

	if _x_input == 0 && _y_input ==0 
	{
		image_index = 0;
		image_speed = 0;
		
		apply_friction_to_movement_entity()
	} else{

	image_speed = _animation_speed;
	if _x_input != 0 {
		image_xscale= _x_input} 
	get_direction_facing(_input_direction_)
	add_movement_maxspeed(_input_direction_, acceleration_, max_speed_);
					}
					
	if _attack_input == true {
		image_index = 0;
		state_ = player.claws;
	}




move_movement_entity(true);