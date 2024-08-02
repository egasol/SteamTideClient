///SendMessage(Text)
function SendMessage(argument0) {

	var Text;

	Text = argument0;

	buffer_seek(BufferWrite, buffer_seek_start, 0);

	buffer_write(BufferWrite, buffer_string, "Message");

	buffer_write(BufferWrite, buffer_string, Text);

	network_send_packet(SocketServer, BufferWrite, buffer_tell(BufferWrite));


}
