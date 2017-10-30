
mx = x; // hook x coordinates
my =  y; // hook y coordinates

active = false;
iGrappleRadius = 280;

//Attack Variables
attack = false;
iAttackTimer = 2;
alarm[0] = iAttackTimer;

iPrevFrameX = 0;

instNearestGP = objGrappleBlock;

//Pendulum Variables
angle_accelerration = 0;
angle_velocity = 0;
angle = 0;
distance = 50;
velocity_dampening = 0.99;

anchor_x = objGrappleBlock.x;
anchor_y = objGrappleBlock.y;


/* 
Ignore the bottom for now
Might be helpful to at least reference


//Pendulum Physics...?

angle_accelerration = -.1 * dcos(angle);
      
angle_velocity += angle_accelerration;
angle += angle_velocity;
      
	//angle_velocity *= velocity_dampening;
  
var new_x = anchor_x + lengthdir_x(distance, angle);
var new_y = anchor_y + lengthdir_y(distance, angle);
  
hsp = new_x - x;
vsp = new_y - y;

*/
