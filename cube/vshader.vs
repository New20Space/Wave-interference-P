#version 330

layout (location = 0) in vec3 Position;
out vec3 Color;

uniform mat4 gWorld;
uniform float f;
void main()
{
    Color = vec3(0.0,0.0,0.7+0.1*(sin(4*Position.x+f)+sin(4*Position.z+f)));
    //gl_Position = gWorld * vec4(Position.xyz,1.0);
    gl_Position = gWorld *vec4(Position.x,Position.y+0.5*(sin(4*Position.x+f)+sin(4*Position.z+f)),Position.z, 1.0);
    
     
}