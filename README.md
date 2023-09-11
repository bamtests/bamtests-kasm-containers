# bamtests custom kasm containers
*This repository contains the container source code for the [bamtests kasm registry](https://bamtests.github.io/kasm-registry/1.0/)*

There are two general goals with this repository:

1. Use open-source/telemetry free alternatives for software that is in the base kasm images (i.e. vscodium instead of code)
2. Add software that I happen to use (i.e. Obsidian.md), and if anyone wants to help I would be happy to add it to this.

## Images

- Freetube - Youtube annoyed me by being annoyed I was using an adblocker. Here is my answer.
  - [x] based on the `core-ubuntu-focal:1.14.0` kasmweb image
  - [x] gpu-capable
- Obsidian - Love Obsidian.md. I had a few issues using multiple devices with the Remotely Save plugin. Seems to be when using a few devices. This solves the problem, although slighty less convenient than the app on touch screens.
  - [x] based on the `core-ubuntu-focal:1.14.0` kasmweb image
  - [x] gpu-capable
