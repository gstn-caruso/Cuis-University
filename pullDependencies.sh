#!/bin/bash

set -euo pipefail

VM_VERSION="201911012148"
VM_FILENAME="squeak.cog.spur_linux64x64_$VM_VERSION"
BASE_VM_DOWNLOAD_PATH="https://github.com/OpenSmalltalk/opensmalltalk-vm/releases/download/$VM_VERSION"

git clone https://github.com/Cuis-University/Cuis-University-Installer.git --depth=1
git clone https://github.com/hernanwilkinson/Cuis-Smalltalk-Refactoring.git --depth=1
git clone https://github.com/ngarbezza/Cuis-Smalltalk-Refactorings-Thesis.git --depth=1
git clone https://github.com/mdinota/TDDGuru.git --depth=1
git clone https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev.git --depth=1

# Download VM
wget "$BASE_VM_DOWNLOAD_PATH/$VM_FILENAME.tar.gz"
tar -xvzf "$VM_FILENAME.tar.gz" && mv sqcogspur64linuxht cogvm
cogvm/bin/squeak --version
