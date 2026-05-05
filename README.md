# Vulkan Template Project

A Vulkan C++ project template using C++23 and CMake.

## Project Structure

```
vulkan-template/
├── build/          # Build directory (generated)
├── scripts/        # Build and utility scripts
│   └── build.sh    # Build script
├── src/            # Source code
│   └── main.cpp    # Main application
├── CMakeLists.txt  # CMake configuration
└── README.md       # This file
```

## Building

### Using the build script

```bash
# Release build (default)
./scripts/build.sh

# Debug build
./scripts/build.sh --debug

# Clean build
./scripts/build.sh --clean
```

### Manual build

```bash
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . -j$(nproc)
```

## Requirements

- CMake 3.20 or higher
- C++23 compatible compiler (GCC 13+, Clang 17+, MSVC 19.33+)

## Features

- C++23 standard
- Modern CMake configuration
- Cross-platform support
- Compiler warnings as errors (in debug builds)
- Separate build directory
