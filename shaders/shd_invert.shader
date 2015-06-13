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
//######################_==_YOYO_SHADER_MARKER_==_######################@~/*
A shader to invert the colors
*/

varying vec2 v_texcoord;

void main()
{ 
    vec4 c = texture2D(gm_BaseTexture,v_texcoord); //get the color that the current pixel is supposed to be
    gl_FragColor = vec4(1.0-c.rgb,c.a); //invert the RGB values; keep alpha the same
}
