u8R"(#version )" + std::to_string( glsl_version ) + u8R"(

in vec4 position;
in vec4 color;
//in vec3 normal;
in vec2 texcoord0;
//in vec2 texcoord1;
//in vec2 texcoord2;
//in vec2 texcoord3;
//in vec2 texcoord4;
//in vec2 texcoord5;
//in vec2 texcoord6;
//in vec2 texcoord7;
in vec4 bone_ids;
in vec4 bone_weights;

out vec4 var_color;
out vec2 var_texcoords[ )" + std::to_string( count_of_textures ) + u8R"( ];

uniform mat4 world_view_projection_transformation;
uniform mat4 bones[ )" + std::to_string( max_bones ) + u8R"( ];
uniform float z_log_trick_near_inversed;
uniform float z_log_trick_log_far_div_near_inversed;

vec4 z_log_trick( vec4 );

void main(void)
{
  mat4 animation_transformation
    = ( bone_weights[ 0 ] + bone_weights[ 1 ] + bone_weights[ 2 ] +bone_weights[ 3 ] == 0.0 )
    ? mat4( 1.0 )
    : bones[ int( bone_ids[ 0 ] ) ] * bone_weights[ 0 ]
    + bones[ int( bone_ids[ 1 ] ) ] * bone_weights[ 1 ]
    + bones[ int( bone_ids[ 2 ] ) ] * bone_weights[ 2 ]
    + bones[ int( bone_ids[ 3 ] ) ] * bone_weights[ 3 ]
    ;
    
  vec4 local_position = animation_transformation * position;
  gl_Position = world_view_projection_transformation * local_position;
  gl_Position = z_log_trick( gl_Position );
  
  var_color = color;
  
  var_texcoords[ 0 ] = texcoord0;
  //  var_texcoords[ 1 ] = texcoord1;
  //  var_texcoords[ 2 ] = texcoord2;
  //  var_texcoords[ 3 ] = texcoord3;
  //  var_texcoords[ 4 ] = texcoord4;
  //  var_texcoords[ 5 ] = texcoord5;
  //  var_texcoords[ 6 ] = texcoord6;
  //  var_texcoords[ 7 ] = texcoord7;
}

vec4 z_log_trick( vec4 p )
{
  p.z = 2.0 * log( p.w * z_log_trick_near_inversed ) * z_log_trick_log_far_div_near_inversed - 1; 
  p.z *= p.w;
  
  return p;
}

)"