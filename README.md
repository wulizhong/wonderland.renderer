wonderland.renderer
===================

C++ ~~header only~~ library of OpenGL rendering engine designed for clang++|g++|em++ standalone use or wonderland game engine.

note: This library depend on assimp, threfore this library is not header only now. however this library change to a header-only at future work plan.

## Demo

- [example-1 on GitHub-pages](http://usagi.github.io/wonderland.renderer/build.em++/example/example-1/example-1.html)

## Dependancy

- [GLEW](http://glew.sourceforge.net/)
- [Open Asset Import Library](http://assimp.sourceforge.net/)
- Boost
    - optional

### note

this library is not depend on wonderland.subsystem
 or any other window management library or OS APIs
 but require OpenGL context at the run-time.
 Therefore, this library could not run standalone,
 its need to running with library or OS APIs
 as a window management and make OpenGL context
 any as you like.

library suggestion:

- wonderland.subsystem
- GLFW3 or GLFW2
- SDL2
- EGLplus or EGL
- OS native API directly

### special thanks

the library included a part of public domain [stblib](https://code.google.com/p/stblib/) library to
 [include/wonder_rabbit_project/wonderland.renderer.detail/stblib.detail](include/wonder_rabbit_project/wonderland.renderer.detail/stblib.detail).

thanks.

## Emscripten tips

Open Asset Import Library(assimp) can compile Emscripten-1.16.0.

For example build assimp with Emscripten:

```shell
. pwd
/home/you/repos
. git clone git@github.com:assimp/assimp.git
. cd assimp
. mkdir build.em
. cd build.em
. cmake -D Ninja .. -DCMAKE_CXX_COMPILER=em++ -DCMAKE_C_COMPILER=emcc -DCMAKE_BUILD_TYPE=Release
. ninja
```

Then, you can build your-app with link libassimp.so:

```shell
em++ -std=c++11 -O2 your-app.cxx /home/you/repos/assimp/build.em/code/libassimp.so -I/home/you/repos/assimp/include -o your-app.html
```

## License

[MIT](LICENSE)

### Excluded

- assets/n175.x
    - COPYRIGHT [Sourceryforce / Yuichi Onodera](http://sorceryforce.com/).
    - COPYRIGHT Mira Studio / Toya Yamazaki.
    - ( [a few change](https://github.com/assimp/assimp/issues/275) for support assimp by Usagi Ito. )
    
## Author

Usagi Ito <usagi@WonderRabbitProject.net>
