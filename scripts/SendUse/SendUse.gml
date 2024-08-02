///SendUse(UseID);
function SendUse(argument0) {

	var UseID;

	UseID = argument0;

	buffer_seek(BufferWrite, buffer_seek_start, 0);

	buffer_write(BufferWrite, buffer_string, "Use");

	buffer_write(BufferWrite, buffer_u32, UseID);

	network_send_packet(SocketServer, BufferWrite, buffer_tell(BufferWrite));


}
