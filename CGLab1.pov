#include "colors.inc"   

#declare HouseBase = union { #include "C:\Users\kirill\Desktop\CG\Koch Lab 1\house_base.pov" }
#declare HouseRoof = union { #include "C:\Users\kirill\Desktop\CG\Koch Lab 1\house_roof.pov" }
#declare HouseWindows = union { #include "C:\Users\kirill\Desktop\CG\Koch Lab 1\house_windows.pov" }
#declare Fence = union { #include "C:\Users\kirill\Desktop\CG\Koch Lab 1\fence.pov" }

#declare MyColor = rgb <123/255,60/255,48/255>;

// Scene Setup
camera
{ 
    location <-7,2,-5> 
    look_at <-1.8,0.2,0>
    angle 60
}

light_source
{
   <-7, 11, -12>
   color <255/255,212/255,145/255>
}  

background
{
  color rgb <81/255, 146/255, 174/255>
}    

//Mesh Setup
plane
{
    y, 0
    pigment { checker Gray, White }
}

union
{
	HouseBase
	pigment { MyColor }  
}

union
{
	HouseRoof
	pigment { Black }
    finish
    {     
        specular 0.9 roughness 0.02       
        reflection
        { 
            0.1,  0.8
            fresnel
        }    
    } 
}    

union
{
	HouseWindows
	pigment { Gray }
}     

union
{
	Fence
	pigment { MyColor }
}       
   
box
{
    <-4, 0,   -0>,  
    < -4.4, 0.4,  -0.4>  
    pigment { rgb <238/255,156/255,150/255> }
}

box
{
    <-4.05, 0.2,   -0.25>,  
    < -4.3, 0.45,  -0.5> 
    pigment { rgb <227/255,143/255,137/255> }
}

box
{
    <-4.25, 0.32,   -0.5>,  
    < -4.29, 0.35,  -0.501> 
    pigment { Black }
}
  
box
{
    <-4.06, 0.32,   -0.5>,  
    < -4.1, 0.35,  -0.501> 
    pigment { Black }
}
   
box
{
    <-4.25, 0.32,   -0.5>,  
    < -4.21, 0.35,  -0.501> 
    pigment { White }
}
  
box
{
    <-4.14, 0.32,   -0.5>,  
    < -4.1, 0.35,  -0.501> 
    pigment { White }
}