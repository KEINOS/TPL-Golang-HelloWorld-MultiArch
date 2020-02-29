# Hello World Template of Golang

## Cross Compile Your Code For Multi-Architectures

This repo compiles the "Hello, World!" Golang source code to the selected architecture over Docker. And exports the compiled binary to your local directory.

- Support binary types to export:

  1) **Linux** : ARM64, ARMv5, ARMv6, ARMv7, AMD64(Intel/x86_64)
  2) **macOS** : AMD64(Intel/x86_64)
  3) **Windows10** : AMD64(Intel/x86_64)

## Usage

Place your Golang source code at `./src/` then run `$ ./build-bin.sh` to build it as below:

```shellsession
$ ./build-bin.sh
===============================================================================
 BUILD MENU
===============================================================================
Arg number : Target OS/Architecture

    0: All the architectures below
    1: linux/arm64
    2: linux/armv5                  ex: QNAP TS-119P+
    3: linux/armv6                  ex: RaspberryPi ZeroW
    4: linux/armv7                  ex: RaspberryPi3 B
    5: linux/amd64,Intel,x86_64
    6: masOS/amd64,Intel,x86_64     ex: MacBookPro
    7: windows/amd64,Intel,x86_64

Input arg number:
```

If the build finishes successfully then the binary file(s) will be placed in `./bin/` directory.

## Requirements

- CPU(Architecture): Intel compatible (Intel, AMD64, x86_64)
- GNU Bash: >= v3.2
- Docker:  >= v19.03.5
- Golang version of the source code: >= v1.13.8
- [go.mod](./src/go.mod) file must be set under `./src/`
  - This compiler sets `GO111MODULE=on`, there fore you need it's own module file.

## Development

This repo contains VS Code's Remote Development settings.

- [./.devcontainer/README.md](./.devcontainer/README.md)
