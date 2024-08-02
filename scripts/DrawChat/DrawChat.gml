function DrawChat() {
	if keyboard_check_pressed(vk_enter)
	{
		if (ChatEnabled == false)
		{
			ChatText = "";
			keyboard_string = "";
	
			ChatEnabled = true;
		}
		else
		{
			if (ChatText != "")
			{
				SendMessage(ChatText);
			}
	
			ChatEnabled = false;
		}
	}

	if (ChatEnabled == true)
	{
		if keyboard_check_pressed(vk_anykey)
		{
			if (string_width(ChatText) < ChatWidth)
			{
				ChatText += keyboard_string;
		
				keyboard_string = "";
			}
		}
	
		if keyboard_check_pressed(vk_backspace)
		{
			var Length = string_length(ChatText);
		
			if (Length > 0)
			{
				ChatText = string_copy(ChatText, 0, Length-1);
			}
		}
	
		//draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(ChatX, ChatY, ChatX+ChatWidth, ChatY+ChatHeight, false);
	
		//draw_set_alpha(1);
		draw_set_color(c_white);
		draw_text(ChatX, ChatY, ChatText);
	}


}
