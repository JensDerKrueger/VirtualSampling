# Raycaster

`Raycaster` is an interactive GPU volume ray casting application used as the companion implementation for the accompanying publication. The project is built to compare classical volume reconstruction methods against virtual sampling variants and prefiltered spline-based approaches under consistent datasets, transfer functions, and camera settings.

The application supports both interactive exploration and scripted evaluation. In addition to a native desktop build, the repository also contains a WebAssembly/WebGL build path and a small browser UI.

## What This Repository Contains

- A native OpenGL volume renderer for 3D scalar datasets
- Multiple reconstruction and traversal modes, including:
  - linear reconstruction
  - quadratic and cubic B-spline reconstruction
  - pre-integrated and peak-finding variants
  - prefiltered quadratic and cubic spline volumes
  - virtual sampling with linear, Catmull-Rom, Hermite, and monotone Hermite interpolation
  - lit and unlit render paths
- Built-in synthetic volumes and bundled real datasets
- Scriptable benchmarking and batch image generation
- An Emscripten/WebGL target with a browser-based frontend

## Included Datasets

The repository ships with a small set of representative datasets and synthetic test cases:

- Synthetic: sphere, ramp, Marschner-Lobb
- Real data: aneurism, bonsai, c60, head512, xmas

These are used both for interactive inspection and for the scripted experiment runs in `Raycaster/Scripts/`.

## Build

### Native build

The native application can be built with the provided `makefile` in `Raycaster/`.

Requirements:

- C++20 compiler
- GLFW
- GLEW
- OpenGL

On macOS, the makefile expects Homebrew-style include/library locations for GLFW and GLEW.

Build:

```bash
cd Raycaster
make
```

Release build:

```bash
cd Raycaster
make release
```

The executable is written to:

```text
Raycaster/build/Raycaster
```

The build also copies shaders, datasets, and scripts into the build output directory so the executable can find them at runtime.

### Xcode

An Xcode project is included:

```text
Raycaster.xcodeproj
```

This is the most convenient way to work on the macOS build inside Xcode.

### Web build

The project also supports an Emscripten build:

```bash
cd Raycaster
make emscripten
```

This generates the browser build in:

```text
Raycaster/web/
```

To serve the generated files locally:

```bash
cd Raycaster
python3 server.py
```

or run `python3 Raycaster/server.py` from the repository root.

## Running Raycaster

After building the native version:

```bash
cd Raycaster/build
./Raycaster
```

Raycaster starts with a set of predefined render modes and a list of built-in datasets. Transfer functions, sampling parameters, mip levels, and camera transforms can be changed interactively or through scripts.

## Scripted Evaluation

The application includes a command interpreter and several ready-made experiment scripts:

- `Raycaster/Scripts/quality.gsc`
- `Raycaster/Scripts/performance.gsc`
- `Raycaster/Scripts/scaling.gsc`

These scripts automate:

- dataset selection
- transfer-function setup
- reconstruction method selection
- virtual sampling configuration
- screenshot capture
- FPS logging
- scaling and quality sweeps

This makes the repository suitable both for reproducing figures and for extending the evaluation with additional rendering methods.

## Research Focus

From the implementation and experiment scripts, the main focus of the project is the comparison of:

- baseline ray marching methods
- virtual sampling strategies
- spline-based reconstruction
- prefiltered volume representations
- image-quality and performance tradeoffs

The codebase is therefore not just a viewer, but an experimental platform for studying reconstruction quality, sampling efficiency, and rendering behavior across multiple datasets and settings.
