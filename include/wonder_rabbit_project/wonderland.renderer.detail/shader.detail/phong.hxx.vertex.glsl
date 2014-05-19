u8R"(#version 100

//#extension GL_EXT_gpu_shader4 : enable

attribute vec4 position;
attribute vec4 color;
attribute vec3 normal;
attribute vec2 texcoord0;
//attribute vec2 texcoord1;
//attribute vec2 texcoord2;
//attribute vec2 texcoord3;
//attribute vec2 texcoord4;
//attribute vec2 texcoord5;
//attribute vec2 texcoord6;
//attribute vec2 texcoord7;
attribute vec3 tangent;
attribute vec3 bitangent;
//attribute ivec4 bone_ids;
attribute vec4 bone_ids;
attribute vec4 bone_weights;

varying vec3 var_position;
varying vec4 var_color;
varying vec3 var_normal;
varying vec2 var_texcoords[ )" + std::to_string( count_of_textures ) + u8R"( ];

uniform mat4 world_view_projection_transformation;
uniform mat4 world_transformation;
uniform mat4 bones[ )" + std::to_string( max_bones ) + u8R"( ];

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
  
  var_position = ( world_transformation * local_position ).xyz;
  var_color    = color;
  var_normal   = ( animation_transformation * vec4( normal, 1.0 ) ).xyz;

  var_texcoords[ 0 ] = texcoord0;
  //  var_texcoords[ 1 ] = texcoord1;
  //  var_texcoords[ 2 ] = texcoord2;
  //  var_texcoords[ 3 ] = texcoord3;
  //  var_texcoords[ 4 ] = texcoord4;
  //  var_texcoords[ 5 ] = texcoord5;
  //  var_texcoords[ 6 ] = texcoord6;
  //  var_texcoords[ 7 ] = texcoord7;
}
)"