function ReadStatus() {
	var ID, Status;

	ID = buffer_read(BufferRead, buffer_u16);
	Status = buffer_read(BufferRead, buffer_u8);

	var oEntity = EntityID[? ID];

	if (oEntity != undefined)
	{
		if (Status == 0)
		{
			var HealthMax, Health;
			
			HealthMax = buffer_read(BufferRead, buffer_f32);
			Health = buffer_read(BufferRead, buffer_f32);
			
			oEntity.HealthShow = 1;
			oEntity.HealthMax = HealthMax;
			oEntity.Health = Health;
		}
		else if (Status == 1)
		{
			var ManaMax, Mana;
			
			ManaMax = buffer_read(BufferRead, buffer_f32);
			Mana = buffer_read(BufferRead, buffer_f32);
		
			oEntity.ManaMax = ManaMax;
			oEntity.Mana = Mana;
		}
	}


}
