initialize_movement_entity(.5,.5,o_solid)
max_speed_ = 2;

image_speed = 0;
direction_facing_ = dir.right;
acceleration_ = 2;
direction_ = 0;
global.player_health = 4;

enum player {
		move,
		run_move,
		claws
}

enum dir {
		right,
		up,
		left,
		down
}

state_ = player.move;

//Walk Sprites
sprite_[player.run_move, dir.right] = s_Karney_Run_Right;
sprite_[player.run_move, dir.up] = s_Karney_Run_Up;
sprite_[player.run_move, dir.left] = s_Karney_Run_Right;
sprite_[player.run_move, dir.down] = s_Karney_Run_Down;

//Run Sprites
sprite_[player.move, dir.right] = s_Karney_Walk_Right;
sprite_[player.move, dir.up] = s_Karney_Walk_Up;
sprite_[player.move, dir.left] = s_Karney_Walk_Right;
sprite_[player.move, dir.down] = s_Karney_Walk_Down;

//Attack Sprite
sprite_[player.claws, dir.right] = s_claws_attack;
sprite_[player.claws, dir.up] = s_claws_attack;
sprite_[player.claws, dir.left] = s_claws_attack;
sprite_[player.claws, dir.down] = s_claws_attack;