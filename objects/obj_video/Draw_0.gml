
var results = video_draw();

if (results[0] == 0) {
    draw_surface(results[1], 0, 0);
}

if (video_get_status() == video_status_closed) {
	room_goto(rm_game);
}



