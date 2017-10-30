/// @description Insert description here
// You can write your code in this editor
if (place_free(x,y+1)) gravity = 1;
else gravity = 0;

if(keyboard_check(ord("D"))){
hspeed = 3;
sprite_index = sprAmeliaV2; 
}
if(keyboard_check(ord("A"))){
hspeed = -3;
sprite_index = sprAmeliaV2;
}
if(!keyboard_check(ord("A"))) && !keyboard_check(ord("D")) hspeed = 0;

if(keyboard_check(vk_space) && !place_free(x,y+1)){
vspeed += -15;
sprite_index = sprAmeliaV2;
}

//CHECKING HOOK
      
if(keyboard_check(vk_up)) && (instance_exists(objGrappleBlock))
{
	instNearestGP = instance_nearest(x, y, objGrappleBlock);
	active = true;
	
	if(active == true)
	{
		
		angle_accelerration = -.1 * dcos(angle);
    
		angle_velocity += angle_accelerration;
		angle += angle_velocity;
    
		//angle_velocity *= velocity_dampening;

		var new_x = anchor_x + lengthdir_x(distance, angle);
		var new_y = anchor_y + lengthdir_y(distance, angle);

		hsp = new_x - x;
		vsp = new_y - y;

		x += hsp;
		y += vsp;
		
	} 
}

if(keyboard_check_released(vk_up))
{
	active = false;
}

/*
	instNearestGP = instance_nearest(x, y, objGrappleBlock);
	if (instNearestGP < iGrappleRadius)
	{
		active = true; 
		mx = instNearestGP.x;
		my = instNearestGP.y;
		active = true;
		vspeed += -5.7;
	}	
		if(distance_to_object(objGrappleBlock) > iGrappleRadius)
		{ 
			active = false;   
		}
}
   
/*
                                   
if(active == true)
{
	gravity = 0.1;
	hspeed = 4;
	x += hspeed;
	vspeed += -5.7;
	y += vspeed;
}    
*/
 

/*

Attack isn't working, and hitbox isn't aligned with the Sword; 
We'll have to change that functionality anyways, since we're taking the sword
off of Amelia's sprite

//Attack
if(attack == true){
	if(mouse_check_button(mb_left)) {
		sprite_index = sprSwordAtk; 
		image_index = -1;
		var xdiff = x - xprevious;
	
		if(!(xdiff = 0)){
			deltax = xdiff; 
		}
		instance_create_layer(x+ sign(other.x),y+sign(other.y)*32,"Player",objSwordHitbox);
		if(image_index >= 7) && (mouse_check_button_released(mb_left)){
			image_speed = 0;
			sprite_index = sprAmeliaV2;
		} 
	}else {
		sprite_index = sprAmeliaV2;
	}
}

if(iAttackTimer > 1){
	attack = true; 
}

*/

if (x < iPrevFrameX)
	{
		image_xscale = -1;
	}
else if (x > iPrevFrameX)
	{
		image_xscale = 1;
	}
iPrevFrameX = x;
