shader_type canvas_item;
uniform sampler2D grad;
uniform sampler2D gradlin;
uniform float threshold;
void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	COLOR=texture(TEXTURE,UV);
	COLOR=texture(gradlin,vec2(clamp((texture(grad,UV)*3.0-texture(TEXTURE,UV+TIME/100.0)).r/2.0+threshold,0.0,1.0)));
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
