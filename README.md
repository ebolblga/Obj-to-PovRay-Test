# Making POV-Ray scene using Blender
## POV-Ray v3.7
Thanks to [JossWhittle](https://github.com/JossWhittle/Obj2Pov) for making .obj to .pov converter. Here is a short guide how to get good looking results:

![CGLab1](https://user-images.githubusercontent.com/82185066/166803124-32ec09e1-fc92-4e10-9c0a-2bfc042387c4.png)

### Step 1 Get model.
Make a model in some 3D editing software. I used [**Blender**](https://www.blender.org/). Alternatively you can just download it from some site.

![image](https://user-images.githubusercontent.com/82185066/166806055-512dee0d-3c0b-47ce-98f4-b45aee916887.png)

### Step 2 Remesh the geometry to triangles. 
JossWhittle's converter generates triangles, so when you import .obj model that contains quads or ngons it will output distorted mesh:

![image](https://user-images.githubusercontent.com/82185066/166806976-154ed449-dcfa-485c-ad42-c5ccbfc2de52.png)

A way to remesh model in Blender is to add **Triangulate modifier**

![image](https://user-images.githubusercontent.com/82185066/166807236-b7bd65f5-79ad-4ed5-b3f1-81b007635fb3.png)
![image](https://user-images.githubusercontent.com/82185066/166807148-3b851254-dc1e-4a5f-837a-4c1a53eec354.png)

### Step 3 Export the model.
Now you need to save the model in .obj file format. In Blender *File > Export > Wavefront (.obj)* and don't forget to checkmark *Selected only*

### Step 4 Run the converter.
Model preparations  are now complete, it's time to launch cmd and follow [JossWhittle](https://github.com/JossWhittle/Obj2Pov#readme)'s documentation.

Summary:<br >
- [x] Download and install [Java Development Kit](https://www.oracle.com/java/technologies/downloads/)
- [x] Open Command Prompt and go to obj2pov.jar file location using **cd [folder path]** command
- [x] Run jar file **java -jar obj2pov.jar < [input obj name].obj > [output pov name].pov**
- [x] Import in the POV-Ray scene using **#declare [Name] = union { #include "[file path].pov" }**
