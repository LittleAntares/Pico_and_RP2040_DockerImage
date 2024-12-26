# Raspberry Pi Pico/RP2040 Docker Build Environment

The purpose of this project is to simplify the setup and working with the RPi Pico or RP2040. The project contains a basic template, including a CMake file, to help set up both the environment and project. This repository will include a walkthrough of the project.

## Setup:

To use this template, the following are required:

1. Install Docker
2. nstall Visual Studio Code (VS Code) and the Dev Container Extension

## Accessing Dev Container

To use Dev Container:

1. Open VS Code and navigate to current repo directory.
2. Open VS Code Shell Command and select "Open Folder in Container"

**Note**: To open VS Code Shell Command you use `control+shift+p` on Windows and `cmd+shift+p` on Mac OS.


## Building the project

To build the project:
1. `mkdir build`
2. `cd build`
3. `cmake ..`
4. `make`

If you be able to build a sucessful project.