render_mode unshaded,cull_front;

uniform sampler2D tex;

uniform vec4 albedo_color :source_color = vec4(1.0);
uniform float scale = 1.0;
uniform float rotation_speed = 1.0;


void fragment(){
	vec4 tex_samp = texture(tex,UV);
	ALBEDO = tex_samp.rgb*albedo_color.rgb;
	ALPHA = tex_samp.a*albedo_color.a;
}