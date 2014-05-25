xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 362;
 -2.70000;0.00000;-2.70000;,
 2.70000;0.00000;-2.70000;,
 2.70000;-0.20000;-2.70000;,
 -2.70000;-0.20000;-2.70000;,
 2.70000;0.00000;2.70000;,
 2.70000;-0.20000;2.70000;,
 -2.70000;0.00000;2.70000;,
 -2.70000;-0.20000;2.70000;,
 -2.70000;5.20000;-2.70000;,
 2.70000;5.20000;-2.70000;,
 2.70000;5.00000;-2.70000;,
 -2.70000;5.00000;-2.70000;,
 2.70000;5.20000;2.70000;,
 2.70000;5.00000;2.70000;,
 -2.70000;5.20000;2.70000;,
 -2.70000;5.00000;2.70000;,
 -2.70000;5.00000;2.70000;,
 2.70000;5.00000;2.70000;,
 2.70000;5.00000;2.50002;,
 -2.70000;5.00000;2.50002;,
 2.70000;0.00000;2.70002;,
 2.70000;0.00000;2.50004;,
 -2.70000;0.00000;2.70002;,
 -2.70000;0.00000;2.50004;,
 -2.70000;5.00000;1.87500;,
 -2.70001;5.00000;2.50000;,
 -2.50003;5.00000;2.50000;,
 -2.50003;5.00000;1.87500;,
 -2.50008;5.00000;1.25000;,
 -2.70005;5.00000;1.25000;,
 -2.70002;0.00000;1.87500;,
 -2.70007;0.00000;1.25000;,
 -2.50010;0.00000;1.25000;,
 -2.50005;0.00000;1.87500;,
 -2.50005;0.00000;2.50000;,
 -2.70002;0.00000;2.50000;,
 -2.70000;0.00000;0.62500;,
 -2.50003;0.00000;0.62500;,
 -2.69998;5.00000;0.62500;,
 -2.50001;5.00000;0.62500;,
 -2.70000;5.00000;0.00000;,
 -2.50003;5.00000;0.00000;,
 -2.70002;0.00000;0.00000;,
 -2.50005;0.00000;0.00000;,
 -2.70000;5.00000;-0.62500;,
 -2.50003;5.00000;-0.62500;,
 -2.70002;0.00000;-0.62500;,
 -2.50005;0.00000;-0.62500;,
 -2.70000;5.00000;-1.25000;,
 -2.50003;5.00000;-1.25000;,
 -2.70003;0.00000;-1.25000;,
 -2.50006;0.00000;-1.25000;,
 -2.70000;5.00000;-1.87500;,
 -2.50003;5.00000;-1.87500;,
 -2.50003;5.00000;-2.50000;,
 -2.70000;5.00000;-2.50000;,
 -2.70003;0.00000;-1.87500;,
 -2.70003;0.00000;-2.50000;,
 -2.50006;0.00000;-2.50000;,
 -2.50006;0.00000;-1.87500;,
 -2.70000;3.12500;-2.50000;,
 -2.50003;3.12500;-2.50000;,
 -2.50003;2.50000;-2.50000;,
 -2.70000;2.50000;-2.50000;,
 -2.70000;2.50000;-1.87500;,
 -2.70000;3.12500;-1.87500;,
 -2.50003;3.12500;-1.87500;,
 -2.50003;2.50000;-1.87500;,
 -2.70000;2.50000;-1.25000;,
 -2.70000;3.12500;-1.25000;,
 -2.70000;2.50000;-0.62500;,
 -2.70000;3.12500;-0.62500;,
 -2.50003;3.12500;-1.25000;,
 -2.50003;3.12500;-0.62500;,
 -2.50003;2.50000;-0.62500;,
 -2.50003;2.50000;-1.25000;,
 -2.70000;2.50000;0.00000;,
 -2.70000;3.12500;0.00000;,
 -2.69997;2.50000;0.62500;,
 -2.69998;3.12500;0.62500;,
 -2.70004;2.50000;1.25000;,
 -2.70004;3.12500;1.25000;,
 -2.69999;2.50000;1.87500;,
 -2.70000;3.12500;1.87500;,
 -2.50007;3.12500;1.25000;,
 -2.50002;3.12500;1.87500;,
 -2.50002;2.50000;1.87500;,
 -2.50007;2.50000;1.25000;,
 -2.70000;2.50000;2.50000;,
 -2.70000;3.12500;2.50000;,
 -2.50003;2.50000;2.50000;,
 -2.50003;3.12500;2.50000;,
 -2.70000;3.75000;-2.50000;,
 -2.50003;3.75000;-2.50000;,
 -2.70000;3.75000;-1.87500;,
 -2.70000;3.75000;-1.25000;,
 -2.50003;3.75000;-1.87500;,
 -2.50003;3.75000;-1.25000;,
 -2.70000;3.75000;-0.62500;,
 -2.70000;3.75000;0.00000;,
 -2.69998;3.75000;0.62500;,
 -2.70004;3.75000;1.25000;,
 -2.50000;3.75000;0.62500;,
 -2.50007;3.75000;1.25000;,
 -2.50000;3.12500;0.62500;,
 -2.70000;3.75000;1.87500;,
 -2.70000;3.75000;2.50000;,
 -2.50002;3.75000;1.87500;,
 -2.50003;3.75000;2.50000;,
 -2.70000;4.37500;-2.50000;,
 -2.50003;4.37500;-2.50000;,
 -2.70000;4.37500;-1.87500;,
 -2.50003;4.37500;-1.87500;,
 -2.70000;4.37500;-1.25000;,
 -2.50003;4.37500;-1.25000;,
 -2.70000;4.37500;-0.62500;,
 -2.50003;4.37500;-0.62500;,
 -2.50003;3.75000;-0.62500;,
 -2.70000;4.37500;0.00000;,
 -2.50003;4.37500;0.00000;,
 -2.50003;3.75000;0.00000;,
 -2.69998;4.37500;0.62500;,
 -2.50001;4.37500;0.62500;,
 -2.70005;4.37500;1.25000;,
 -2.70000;4.37500;1.87500;,
 -2.50008;4.37500;1.25000;,
 -2.50003;4.37500;1.87500;,
 -2.70000;4.37500;2.50000;,
 -2.50003;4.37500;2.50000;,
 -2.50000;1.87500;-2.50000;,
 -2.69997;1.87500;-2.50000;,
 -2.50000;1.87500;-1.87500;,
 -2.50000;1.87500;-1.25000;,
 -2.69997;1.87500;-1.87500;,
 -2.69997;1.87500;-1.25000;,
 -2.50000;1.87500;-0.62500;,
 -2.50003;2.50000;0.00000;,
 -2.50000;1.87500;0.00000;,
 -2.69997;1.87500;-0.62500;,
 -2.69997;1.87500;0.00000;,
 -2.49997;1.87500;0.62500;,
 -2.50000;2.50000;0.62500;,
 -2.50004;1.87500;1.25000;,
 -2.69995;1.87500;0.62500;,
 -2.49999;1.87500;1.87500;,
 -2.70001;1.87500;1.25000;,
 -2.69996;1.87500;1.87500;,
 -2.50000;1.87500;2.50000;,
 -2.69997;1.87500;2.50000;,
 -2.50000;1.25000;-2.50000;,
 -2.69997;1.25000;-2.50000;,
 -2.50000;1.25000;-1.87500;,
 -2.50000;1.25000;-1.25000;,
 -2.69997;1.25000;-1.87500;,
 -2.69997;1.25000;-1.25000;,
 -2.69997;1.25000;-0.62500;,
 -2.50000;1.25000;0.00000;,
 -2.49997;1.25000;0.62500;,
 -2.69997;1.25000;0.00000;,
 -2.69994;1.25000;0.62500;,
 -2.70001;1.25000;1.25000;,
 -2.49999;1.25000;1.87500;,
 -2.50000;1.25000;2.50000;,
 -2.69996;1.25000;1.87500;,
 -2.69997;1.25000;2.50000;,
 -2.50010;0.62500;-2.50000;,
 -2.50010;0.62500;-1.87500;,
 -2.70007;0.62500;-2.50000;,
 -2.50010;0.62500;-1.25000;,
 -2.70007;0.62500;-1.87500;,
 -2.50000;1.25000;-0.62500;,
 -2.50010;0.62500;-0.62500;,
 -2.70007;0.62500;-1.25000;,
 -2.50010;0.62500;0.00000;,
 -2.70007;0.62500;-0.62500;,
 -2.50007;0.62500;0.62500;,
 -2.70007;0.62500;0.00000;,
 -2.50014;0.62500;1.25000;,
 -2.70004;0.62500;0.62500;,
 -2.50004;1.25000;1.25000;,
 -2.50009;0.62500;1.87500;,
 -2.70011;0.62500;1.25000;,
 -2.50010;0.62500;2.50000;,
 -2.70006;0.62500;1.87500;,
 -2.70006;0.62500;2.50000;,
 -1.91728;5.00000;1.87500;,
 -1.91728;4.37500;1.87500;,
 -1.91729;5.00000;2.50000;,
 -1.91728;4.37500;2.50000;,
 -2.17292;4.37500;1.25004;,
 -2.17285;4.37500;0.62504;,
 -2.17292;3.75000;1.25004;,
 -2.17285;3.75000;0.62504;,
 -2.00929;5.00000;-0.62500;,
 -2.00929;4.37500;-0.62500;,
 -2.00929;5.00000;-0.00000;,
 -2.00929;4.37500;0.00000;,
 -2.25466;4.37500;-1.25000;,
 -2.25466;4.37500;-1.87500;,
 -2.25466;3.75000;-1.25000;,
 -2.25466;3.75000;-1.87500;,
 -2.00929;2.50002;-1.25000;,
 -2.00926;1.87502;-1.25000;,
 -2.00929;2.50002;-0.62500;,
 -2.00926;1.87502;-0.62500;,
 -2.25471;3.12500;1.25003;,
 -2.25464;3.12500;0.62503;,
 -2.25471;2.50000;1.25003;,
 -2.25464;2.50000;0.62503;,
 -1.72308;0.62505;0.62497;,
 -1.72310;0.62505;-0.00003;,
 -1.72303;0.00005;0.62497;,
 -1.72306;0.00005;-0.00003;,
 -2.20356;1.87500;1.24998;,
 -2.20356;1.25000;1.24998;,
 -2.20351;1.87500;1.87498;,
 -2.20351;1.25000;1.87498;,
 -1.80479;1.24989;-1.87500;,
 -1.80489;0.62489;-1.87500;,
 -1.80479;1.24989;-1.25000;,
 -1.80489;0.62489;-1.25000;,
 -1.75370;2.50003;1.87501;,
 -1.75367;1.87503;1.87501;,
 -1.75370;2.50003;2.50001;,
 -1.75367;1.87503;2.50001;,
 -2.25473;0.62502;2.50000;,
 -2.25473;0.62502;1.87500;,
 -2.25469;0.00002;2.50000;,
 -2.25468;0.00002;1.87500;,
 -2.35684;1.24998;0.62502;,
 -2.35694;0.62498;0.62502;,
 -2.35691;1.24998;1.25002;,
 -2.35701;0.62498;1.25002;,
 -2.39777;3.12500;0.62500;,
 -2.39779;3.12500;-0.00000;,
 -2.50003;3.12500;0.00000;,
 -2.39777;2.50000;0.62500;,
 -2.39779;2.50000;-0.00000;,
 -2.18309;3.75000;1.87497;,
 -2.18314;3.75000;1.24997;,
 -2.18309;3.12500;1.87497;,
 -2.18314;3.12500;1.24997;,
 -2.31600;3.12500;-1.25000;,
 -2.31600;3.12500;-1.87500;,
 -2.31600;2.50000;-1.25000;,
 -2.31600;2.50000;-1.87500;,
 -2.08086;3.75000;-0.00000;,
 -2.08086;3.75000;-0.62500;,
 -2.08086;3.12500;-0.00000;,
 -2.08086;3.12500;-0.62500;,
 -2.22399;5.00000;-2.50000;,
 -2.22399;4.37500;-2.50000;,
 -2.22399;5.00000;-1.87500;,
 -2.22399;4.37500;-1.87500;,
 -2.38754;1.87500;-2.50000;,
 -2.38754;1.25000;-2.50000;,
 -2.38754;1.87500;-1.87500;,
 -2.38754;1.25000;-1.87500;,
 -2.41824;3.75000;-1.87500;,
 -2.41824;3.75000;-2.50000;,
 -2.41824;3.12500;-1.87500;,
 -2.41824;3.12500;-2.50000;,
 -2.18317;0.62502;-1.87500;,
 -2.18317;0.62502;-2.50000;,
 -2.18312;0.00002;-1.87500;,
 -2.18312;0.00002;-2.50000;,
 -2.39786;0.62501;-0.62500;,
 -2.39786;0.62501;-1.25000;,
 -2.39782;0.00001;-0.62500;,
 -2.39782;0.00001;-1.25000;,
 -2.28530;1.24997;-0.62500;,
 -2.28540;0.62497;-0.62500;,
 -2.28530;1.24997;0.00000;,
 -2.28540;0.62497;0.00000;,
 -2.00924;1.87500;0.62505;,
 -2.00924;1.25000;0.62505;,
 -2.00931;1.87500;1.25005;,
 -2.00931;1.25000;1.25005;,
 -2.19332;2.50001;-0.00001;,
 -2.19329;1.87501;-0.00001;,
 -2.19329;2.50001;0.62499;,
 -2.19327;1.87501;0.62499;,
 -2.21377;3.12500;2.50000;,
 -2.21376;3.12500;1.87500;,
 -2.21377;2.50000;2.50000;,
 -2.21376;2.50000;1.87500;,
 -2.26488;3.75000;-0.62500;,
 -2.26488;3.75000;-1.25000;,
 -2.26488;3.12500;-0.62500;,
 -2.26488;3.12500;-1.25000;,
 -2.22397;3.75000;0.62499;,
 -2.22399;3.75000;-0.00001;,
 -2.22397;3.12500;0.62499;,
 -2.22399;3.12500;-0.00001;,
 -2.15247;5.00000;1.24997;,
 -2.15247;4.37500;1.24997;,
 -2.15242;5.00000;1.87497;,
 -2.15242;4.37500;1.87497;,
 -2.17288;4.37500;2.50000;,
 -2.17287;4.37500;1.87500;,
 -2.17288;3.75000;2.50000;,
 -2.17287;3.75000;1.87500;,
 -2.37735;5.00000;-1.25000;,
 -2.37734;4.37500;-1.25000;,
 -2.37734;5.00000;-0.62500;,
 -2.37734;4.37500;-0.62500;,
 -2.05017;5.00000;0.62505;,
 -2.05017;4.37500;0.62505;,
 -2.05024;5.00000;1.25005;,
 -2.05023;4.37500;1.25005;,
 -2.24444;2.50001;-2.50000;,
 -2.24441;1.87501;-2.50000;,
 -2.24444;2.50001;-1.87500;,
 -2.24441;1.87501;-1.87500;,
 -2.21376;3.12500;0.00000;,
 -2.21376;3.12500;-0.62500;,
 -2.21376;2.50000;0.00000;,
 -2.21376;2.50000;-0.62500;,
 -2.21374;1.87500;-1.25000;,
 -2.21374;1.25000;-1.25000;,
 -2.21373;1.87500;-0.62500;,
 -2.21373;1.25000;-0.62500;,
 -1.92747;1.87500;-0.62500;,
 -1.92747;1.25000;-0.62500;,
 -1.92747;1.87500;-0.00000;,
 -1.92747;1.25000;-0.00000;,
 2.70000;5.00000;-0.93750;,
 2.70000;5.00000;-2.50000;,
 2.50004;5.00000;-2.50000;,
 2.50003;5.00000;-0.93750;,
 2.70003;0.00000;-0.93750;,
 2.50007;0.00000;-0.93750;,
 2.50007;0.00000;-2.50000;,
 2.70003;0.00000;-2.50000;,
 2.70000;5.00000;0.93750;,
 2.50003;5.00000;0.93750;,
 2.50003;5.00000;2.50000;,
 2.70000;5.00000;2.50000;,
 2.70003;0.00000;0.93750;,
 2.70003;0.00000;2.50000;,
 2.50007;0.00000;2.50000;,
 2.50007;0.00000;0.93750;,
 2.70000;3.75000;-2.50000;,
 2.70000;3.75000;-0.93750;,
 2.50004;3.75000;-2.50000;,
 2.70000;3.75000;0.93750;,
 2.50003;3.75000;-0.93750;,
 2.70000;3.75000;2.50000;,
 2.50003;3.75000;0.93750;,
 2.50003;3.75000;2.50000;,
 -2.70000;5.00000;-2.50000;,
 2.70000;5.00000;-2.50000;,
 2.70000;5.00000;-2.69997;,
 -2.70000;5.00000;-2.69997;,
 2.70000;0.00000;-2.49998;,
 2.70000;0.00000;-2.69996;,
 -2.70000;0.00000;-2.49998;,
 -2.70000;0.00000;-2.69996;,
 -2.70000;5.00000;-2.69997;,
 2.70000;5.00000;-2.69997;,
 2.70000;0.00000;-2.69996;,
 -2.70000;0.00000;-2.69996;;
 
 347;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,0,3,7;,
 4;6,4,1,0;,
 4;3,2,5,7;,
 4;8,9,10,11;,
 4;9,12,13,10;,
 4;12,14,15,13;,
 4;14,8,11,15;,
 4;14,12,9,8;,
 4;11,10,13,15;,
 4;16,17,18,19;,
 4;17,20,21,18;,
 4;20,22,23,21;,
 4;22,16,19,23;,
 4;22,20,17,16;,
 4;19,18,21,23;,
 4;24,25,26,27;,
 4;24,27,28,29;,
 4;30,31,32,33;,
 4;30,33,34,35;,
 4;36,37,32,31;,
 4;38,29,28,39;,
 4;40,38,39,41;,
 4;42,43,37,36;,
 4;44,40,41,45;,
 4;46,47,43,42;,
 4;48,44,45,49;,
 4;50,51,47,46;,
 4;52,48,49,53;,
 4;52,53,54,55;,
 4;56,57,58,59;,
 4;56,59,51,50;,
 4;60,61,62,63;,
 4;60,63,64,65;,
 4;61,66,67,62;,
 4;65,64,68,69;,
 4;69,68,70,71;,
 4;72,73,74,75;,
 4;71,70,76,77;,
 4;77,76,78,79;,
 4;79,78,80,81;,
 4;81,80,82,83;,
 4;84,85,86,87;,
 4;83,82,88,89;,
 4;89,88,90,91;,
 4;92,93,61,60;,
 4;92,60,65,94;,
 4;94,65,69,95;,
 4;96,97,72,66;,
 4;95,69,71,98;,
 4;98,71,77,99;,
 4;99,77,79,100;,
 4;100,79,81,101;,
 4;102,103,84,104;,
 4;101,81,83,105;,
 4;105,83,89,106;,
 4;107,108,91,85;,
 4;106,89,91,108;,
 4;109,55,54,110;,
 4;109,110,93,92;,
 4;109,92,94,111;,
 4;109,111,52,55;,
 4;110,112,96,93;,
 4;111,94,95,113;,
 4;111,113,48,52;,
 4;112,53,49,114;,
 4;113,95,98,115;,
 4;113,115,44,48;,
 4;114,116,117,97;,
 4;115,98,99,118;,
 4;115,118,40,44;,
 4;116,119,120,117;,
 4;118,99,100,121;,
 4;118,121,38,40;,
 4;119,41,39,122;,
 4;119,122,102,120;,
 4;121,100,101,123;,
 4;121,123,29,38;,
 4;123,101,105,124;,
 4;123,124,24,29;,
 4;125,126,107,103;,
 4;124,105,106,127;,
 4;124,127,25,24;,
 4;127,106,108,128;,
 4;127,128,26,25;,
 4;129,130,63,62;,
 4;131,67,75,132;,
 4;130,133,64,63;,
 4;133,134,68,64;,
 4;135,74,136,137;,
 4;134,138,70,68;,
 4;138,139,76,70;,
 4;140,141,87,142;,
 4;139,143,78,76;,
 4;142,87,86,144;,
 4;143,145,80,78;,
 4;145,146,82,80;,
 4;147,90,88,148;,
 4;146,148,88,82;,
 4;149,150,130,129;,
 4;151,131,132,152;,
 4;150,153,133,130;,
 4;153,154,134,133;,
 4;154,155,138,134;,
 4;156,137,140,157;,
 4;155,158,139,138;,
 4;158,159,143,139;,
 4;159,160,145,143;,
 4;161,144,147,162;,
 4;160,163,146,145;,
 4;162,147,148,164;,
 4;163,164,148,146;,
 4;165,149,151,166;,
 4;165,58,57,167;,
 4;165,167,150,149;,
 4;166,168,51,59;,
 4;167,57,56,169;,
 4;167,169,153,150;,
 4;168,152,170,171;,
 4;169,56,50,172;,
 4;169,172,154,153;,
 4;171,173,43,47;,
 4;172,50,46,174;,
 4;172,174,155,154;,
 4;173,156,157,175;,
 4;174,46,42,176;,
 4;174,176,158,155;,
 4;175,177,32,37;,
 4;176,42,36,178;,
 4;176,178,159,158;,
 4;177,179,161,180;,
 4;177,180,33,32;,
 4;178,36,31,181;,
 4;178,181,160,159;,
 4;180,161,162,182;,
 4;181,31,30,183;,
 4;181,183,163,160;,
 4;182,162,164,184;,
 4;182,184,35,34;,
 4;183,30,35,184;,
 4;183,184,164,163;,
 4;185,186,126,27;,
 4;187,185,27,26;,
 4;188,187,26,128;,
 4;186,188,128,126;,
 4;186,185,187,188;,
 4;189,190,122,125;,
 4;191,189,125,103;,
 4;192,191,103,102;,
 4;190,192,102,122;,
 4;190,189,191,192;,
 4;193,194,116,45;,
 4;195,193,45,41;,
 4;196,195,41,119;,
 4;194,196,119,116;,
 4;194,193,195,196;,
 4;197,198,112,114;,
 4;199,197,114,97;,
 4;200,199,97,96;,
 4;198,200,96,112;,
 4;198,197,199,200;,
 4;201,202,132,75;,
 4;203,201,75,74;,
 4;204,203,74,135;,
 4;202,204,135,132;,
 4;202,201,203,204;,
 4;205,206,104,84;,
 4;207,205,84,87;,
 4;208,207,87,141;,
 4;206,208,141,104;,
 4;206,205,207,208;,
 4;209,210,173,175;,
 4;211,209,175,37;,
 4;212,211,37,43;,
 4;210,212,43,173;,
 4;210,209,211,212;,
 4;213,214,179,142;,
 4;215,213,142,144;,
 4;216,215,144,161;,
 4;214,216,161,179;,
 4;214,213,215,216;,
 4;217,218,166,151;,
 4;219,217,151,152;,
 4;220,219,152,168;,
 4;218,220,168,166;,
 4;218,217,219,220;,
 4;221,222,144,86;,
 4;223,221,86,90;,
 4;224,223,90,147;,
 4;222,224,147,144;,
 4;222,221,223,224;,
 4;225,226,180,182;,
 4;227,225,182,34;,
 4;228,227,34,33;,
 4;226,228,33,180;,
 4;226,225,227,228;,
 4;229,230,175,157;,
 4;231,229,157,179;,
 4;232,231,179,177;,
 4;230,232,177,175;,
 4;230,229,231,232;,
 4;233,234,235,104;,
 4;236,233,104,141;,
 4;237,236,141,136;,
 4;234,237,136,235;,
 4;234,233,236,237;,
 4;238,239,103,107;,
 4;240,238,107,85;,
 4;241,240,85,84;,
 4;239,241,84,103;,
 4;239,238,240,241;,
 4;242,243,66,72;,
 4;244,242,72,75;,
 4;245,244,75,67;,
 4;243,245,67,66;,
 4;243,242,244,245;,
 4;246,247,117,120;,
 4;248,246,120,235;,
 4;249,248,235,73;,
 4;247,249,73,117;,
 4;247,246,248,249;,
 4;250,251,110,54;,
 4;252,250,54,53;,
 4;253,252,53,112;,
 4;251,253,112,110;,
 4;251,250,252,253;,
 4;254,255,149,129;,
 4;256,254,129,131;,
 4;257,256,131,151;,
 4;255,257,151,149;,
 4;255,254,256,257;,
 4;258,259,93,96;,
 4;260,258,96,66;,
 4;261,260,66,61;,
 4;259,261,61,93;,
 4;259,258,260,261;,
 4;262,263,165,166;,
 4;264,262,166,59;,
 4;265,264,59,58;,
 4;263,265,58,165;,
 4;263,262,264,265;,
 4;266,267,168,171;,
 4;268,266,171,47;,
 4;269,268,47,51;,
 4;267,269,51,168;,
 4;267,266,268,269;,
 4;270,271,171,170;,
 4;272,270,170,156;,
 4;273,272,156,173;,
 4;271,273,173,171;,
 4;271,270,272,273;,
 4;274,275,157,140;,
 4;276,274,140,142;,
 4;277,276,142,179;,
 4;275,277,179,157;,
 4;275,274,276,277;,
 4;278,279,137,136;,
 4;280,278,136,141;,
 4;281,280,141,140;,
 4;279,281,140,137;,
 4;279,278,280,281;,
 4;282,283,85,91;,
 4;284,282,91,90;,
 4;285,284,90,86;,
 4;283,285,86,85;,
 4;283,282,284,285;,
 4;286,287,97,117;,
 4;288,286,117,73;,
 4;289,288,73,72;,
 4;287,289,72,97;,
 4;287,286,288,289;,
 4;290,291,120,102;,
 4;292,290,102,104;,
 4;293,292,104,235;,
 4;291,293,235,120;,
 4;291,290,292,293;,
 4;294,295,125,28;,
 4;296,294,28,27;,
 4;297,296,27,126;,
 4;295,297,126,125;,
 4;295,294,296,297;,
 4;298,299,126,128;,
 4;300,298,128,108;,
 4;301,300,108,107;,
 4;299,301,107,126;,
 4;299,298,300,301;,
 4;302,303,114,49;,
 4;304,302,49,45;,
 4;305,304,45,116;,
 4;303,305,116,114;,
 4;303,302,304,305;,
 4;306,307,122,39;,
 4;308,306,39,28;,
 4;309,308,28,125;,
 4;307,309,125,122;,
 4;307,306,308,309;,
 4;310,311,129,62;,
 4;312,310,62,67;,
 4;313,312,67,131;,
 4;311,313,131,129;,
 4;311,310,312,313;,
 4;314,315,73,235;,
 4;316,314,235,136;,
 4;317,316,136,74;,
 4;315,317,74,73;,
 4;315,314,316,317;,
 4;318,319,152,132;,
 4;320,318,132,135;,
 4;321,320,135,170;,
 4;319,321,170,152;,
 4;319,318,320,321;,
 4;322,323,170,135;,
 4;324,322,135,137;,
 4;325,324,137,156;,
 4;323,325,156,170;,
 4;323,322,324,325;,
 4;326,327,328,329;,
 4;330,331,332,333;,
 4;334,326,329,335;,
 4;334,335,336,337;,
 4;338,339,340,341;,
 4;338,341,331,330;,
 4;342,327,326,343;,
 4;342,343,330,333;,
 4;342,333,332,344;,
 4;342,344,328,327;,
 4;343,326,334,345;,
 4;344,332,331,346;,
 4;344,346,329,328;,
 4;345,334,337,347;,
 4;345,347,339,338;,
 4;346,348,335,329;,
 4;347,337,336,349;,
 4;347,349,340,339;,
 4;348,341,340,349;,
 4;348,349,336,335;,
 4;348,345,338,341;,
 4;343,345,348,346;,
 4;331,330,343,346;,
 4;350,351,352,353;,
 4;351,354,355,352;,
 4;354,356,357,355;,
 4;356,350,353,357;,
 4;356,354,351,350;,
 4;358,359,360,361;;
 
 MeshMaterialList {
  3;
  347;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.502000;0.502000;1.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;0.502000;0.502000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
}
