///SendSkill(SkillName, X, Y)
function SendSkill(argument0, argument1, argument2, argument3) {

	var SkillName, TargetID, X, Y;

	SkillName = argument0;

	TargetID = argument1;

	X = argument2;
	Y = argument3;

	buffer_seek(BufferWrite, buffer_seek_start, 0);

	buffer_write(BufferWrite, buffer_string, "Skill");

	buffer_write(BufferWrite, buffer_string, SkillName);

	buffer_write(BufferWrite, buffer_s32, TargetID);

	buffer_write(BufferWrite, buffer_u32, X);
	buffer_write(BufferWrite, buffer_u32, Y);

	network_send_packet(SocketServer, BufferWrite, buffer_tell(BufferWrite));


}
