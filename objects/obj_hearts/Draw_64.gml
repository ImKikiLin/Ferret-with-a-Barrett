var playerHealth = health;
var playerHealthMax = global.maxHealth;


for (var i = 1; i <= playerHealthMax; i++) {
	var imageIndex = (i > playerHealth);
	
	draw_sprite_ext(Heart_opaque, imageIndex , 8 + ((i-1) * 110), 8, 0.15, 0.15, 0, c_white, 1);
}	
