#!/bin/bash
set -e

BUILD_DIR="build"
BUILD_TYPE="Release"

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --debug)
            BUILD_TYPE="Debug"
            shift
            ;;
        --clean)
            echo "Cleaning build directory..."
            rm -rf "$BUILD_DIR"
            shift
            ;;
        --help)
            echo "Usage: $0 [--debug] [--clean] [--help]"
            echo "  --debug  Build in Debug mode"
            echo "  --clean  Remove build directory before building"
            echo "  --help   Show this help message"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Create build directory
mkdir -p "$BUILD_DIR"

# Configure
cmake -B "$BUILD_DIR" -DCMAKE_BUILD_TYPE="$BUILD_TYPE" "$@"

# Build
cmake --build "$BUILD_DIR" --config "$BUILD_TYPE" -j$(nproc)

echo "Build complete! Executable: $BUILD_DIR/bin/VulkanTemplate"
