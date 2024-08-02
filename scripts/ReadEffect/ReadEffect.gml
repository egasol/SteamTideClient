function ReadEffect() {
	var X, Y, Sprite, Audio;

	X = buffer_read(BufferRead, buffer_u32);
	Y = buffer_read(BufferRead, buffer_u32);

	Sprite = buffer_read(BufferRead, buffer_s8);
	Audio = buffer_read(BufferRead, buffer_u8);

	var oEffect = instance_create_depth(X, Y, -room_height, Effect)

	oEffect.sprite_index = Sprites[? Sprite];
	oEffect.image_speed = 0.5;

	audio_play_sound(Audio, 0, false);


}
