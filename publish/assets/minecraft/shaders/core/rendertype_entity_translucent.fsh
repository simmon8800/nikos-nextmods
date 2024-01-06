#version 150
#moj_import <fog.glsl>
uniform sampler2D Sampler0;uniform vec4 ColorModulator;uniform float FogStart;uniform float FogEnd;uniform vec4 FogColor;in float aa;in vec4 bb;in vec4 cc;in vec4 dd;in vec2 ee;in vec4 ff;in vec2 gg;flat in int hh;flat in int oo;out vec4 fragColor;void main(){vec4 color_1; vec2 UV_2; if(((oo==1)&&(gl_FrontFacing==bool(0)))){ discard;} UV_2=ee; if(((hh==1)||(gg.y >= 0.25))){ UV_2=gg;} vec4 tp_3; tp_3=texture(Sampler0, UV_2); color_1=tp_3; if((tp_3.w < 0.09)){ discard;} color_1=(tp_3*(bb*ColorModulator)); color_1.xyz=mix(dd.xyz, color_1.xyz, dd.w); color_1=(color_1*cc); fragColor=linear_fog(color_1, aa, FogStart, FogEnd, FogColor);}