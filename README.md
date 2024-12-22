# boxkit

My personal distrobox container images.

## How everything is organized
### Where everything is
- The ContainerFiles for the images are stored in `ContainerFiles/` folder.
- Any setup scripts are stored in `scripts/` folder.
- The Github workflow that generates the images is `.github/workflows/build-boxkit.yml`

### How to create a new image
- Add a new ContainerFile to `ContainerFiles/`
- Add a new setup script to `scripts/`
- Add the name of the ContainerFile to the following subkey in `build-boxkit.yml`: <br> <br>
`jobs:` > `strategy:` > `matrix:` > `containerfile:` > `- [image_name]`


## Image list
### Completed
- #### [basebox-fedora](ContainerFiles/basebox-fedora) <br>
  A simple Fedora toolbox image with RPMFusion repo and codecs integrated.
  Perfect for serving as a base image for other images.

### Planned
- #### [devbox-arch](recipes/devbox-arch.yml) <br>
  A distrobox image with the C/C++ toolchain, Rust toolchain and VSCode preinstalled.
- #### [appbox-arch](recipes/appbox-arch.yml) <br>
  A distrobox image with Obsidian, Zotero, KeePassXC and LibreOffice preinstalled. Based on `ublue-toolbox` image.
- #### [winebox-fedora](recipes/winebox-fedora.yml) <br>
  A distrobox image with `winehq-staging` preinstalled from the official WineHQ repos for Fedora. Their builds are compiled with WoW64 support and don't pull 32-bit libs. Some useful scripts are also included.
