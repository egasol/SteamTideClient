if (room = rGame)
{
	DrawShadows();
	
	if instance_exists(Target)
	{
		var TW, TH;
		
		TW = 18+6*sin(TargetMarkerAnimation);
		TH = 8+3*sin(TargetMarkerAnimation);
		
		TargetMarkerAnimation += 0.1;
		
		draw_set_color($9090dd);
		draw_set_alpha(0.4-0.2*sin(TargetMarkerAnimation));
		draw_ellipse(Target.x-TW, Target.y-TH, Target.x+TW, Target.y+TH, false);
		draw_set_alpha(1);
	}
}

//Skills
var TargetID = -1;

//if (Target != false) TargetID = Target.ID; else TargetID = -1;

if keyboard_check_pressed(ord("1")) SendSkill("Jump", TargetID, mouse_x, mouse_y);
//if keyboard_check_pressed(ord("2")) SendSkill("Knockback", TargetID, mouse_x, mouse_y);
//if keyboard_check_pressed(ord("3")) SendSkill("Slash", TargetID, mouse_x, mouse_y);
//if keyboard_check_pressed(ord("4")) SendSkill("Stun", TargetID, mouse_x, mouse_y);

if keyboard_check_pressed(ord("Z")) SendMessage("/switch");
if keyboard_check_pressed(ord("X")) SendMessage("/use");