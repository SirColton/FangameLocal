//see Fragment shader tab for details
//this can all be left alone

attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_texcoord;

void main()
{
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
    v_texcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~#define M_PI 3.1415926535897932384626433832795

/*
A shader to create a vertical standing wave on the screen
Used by 'objWaveTransition' in the engine
*/

varying vec2 v_texcoord;

uniform float time; //time elapsed, in seconds (just add 1/room_speed to this every step and pass it in)
uniform float amplitude; //units of textures (1.0 = offset by one full texture width at peak)
uniform float wavelength; //units of textures (1.0 = the wave is as tall as the texture, peak to peak)
uniform float frequency; //units of hertz (1.0 = one wave per second)

/*
    standing wave equation: y=a*sin(k*x + w*t)
    where:
    a=amplitude
    k=wave number (radians per meter) = 2*pi/wavelength
    w=angular frequency (radians per meter) = 2*pi*frequency
*/

void main()
{ 
    vec2 texCoord = v_texcoord; //copy the current texture coordinate for this pixel
    
    //calculate the offset of the current pixel
    float k = 2.0*M_PI / wavelength;
    float omega = 2.0*M_PI * frequency;
    texCoord.x = v_texcoord.x + amplitude*sin(k*v_texcoord.y + omega*time);
 
    gl_FragColor = texture2D(gm_BaseTexture,texCoord); //set the color to be the color of the pixel at the offset
}
