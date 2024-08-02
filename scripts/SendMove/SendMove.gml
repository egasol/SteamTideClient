///SendMove(X, Y);
function SendMove(argument0, argument1) {

	var X, Y;

	X = argument0;
	Y = argument1;

	buffer_seek(BufferWrite, buffer_seek_start, 0);

	buffer_write(BufferWrite, buffer_string, "Move");

	buffer_write(BufferWrite, buffer_u32, X);
	buffer_write(BufferWrite, buffer_u32, Y);

	network_send_packet(SocketServer, BufferWrite, buffer_tell(BufferWrite));


}
