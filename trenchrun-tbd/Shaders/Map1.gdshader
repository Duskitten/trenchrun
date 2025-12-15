shader_type spatial;
render_mode diffuse_burley;

uniform sampler2D heightmap;
uniform sampler2D dirt_texture;
uniform float uv_scale = 1.0;
uniform float height_ratio = 1.0;
uniform float height_depth = 1.0;

void fragment(){
	ALBEDO = texture(dirt_texture, UV*uv_scale).rgb * (texture(heightmap,UV).rgb*2.0);
	METALLIC = 0.0;
	SPECULAR = 0.0;

}

void vertex(){
	VERTEX.y += texture(heightmap,UV).r*(height_depth) + height_ratio;
}