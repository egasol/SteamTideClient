///SendPickup(PickupID);
function SendPickup(argument0) {

	var PickupID;

	PickupID = argument0;

	buffer_seek(BufferWrite, buffer_seek_start, 0);

	buffer_write(BufferWrite, buffer_string, "Pickup");

	buffer_write(BufferWrite, buffer_u32, PickupID);

	network_send_packet(SocketServer, BufferWrite, buffer_tell(BufferWrite));


}
