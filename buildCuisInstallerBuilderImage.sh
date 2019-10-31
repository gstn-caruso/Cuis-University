#!/bin/bash

set -euo pipefail

cuisImageFileName() {
    echo "$(pwd)/Cuis-Smalltalk-Dev/$(ls ./Cuis-Smalltalk-Dev | grep 'Cuis5.0-[0-9]\+.image')"
}

# Install CuisInstallerBuilder on Cuis image
./cogvm/squeak $(cuisImageFileName) -s ./Cuis-University-Installer/Cuis-University-InstallerBuilder.pck.st
