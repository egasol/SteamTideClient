function ReadMessage() {
	var Text, X, Y;

	Text = buffer_read(BufferRead, buffer_string);

	X = buffer_read(BufferRead, buffer_u32);
	Y = buffer_read(BufferRead, buffer_u32);

	var oMessage = instance_create_depth(X, Y, -room_height, Message)

	oMessage.Text = Text;
	oMessage.Timer = 90;
	oMessage.VelocityX = random_range(-1, 1);
	oMessage.VelocityY = -4;


}
