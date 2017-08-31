#! /bin/bash

IDEA_VERSION=2017.2.2
FILE_NAME=ideaIC-${IDEA_VERSION}-no-jdk.tar.gz

echo "Install IntelliJ Idea ${IDEA_VERSION}"

cd ~
wget https://download.jetbrains.com/idea/${FILE_NAME}
tar -xvf ${FILE_NAME}
mkdir ~/idea
mv ~/idea-IC*/* ~/idea/
rm -rf ~/idea-IC*

echo "Add Desktop icon"
printf "[Desktop Entry]
Name=IntelliJ
Comment=IntelliJ Idea Development IDE
Exec=/home/$(whoami)/idea/bin/idea.sh
Path=/home/$(whoami)/dev
Icon=/home/$(whoami)/idea/bin/idea.png
Terminal=false
Type=Application
Categories=Development;
" > ~/.local/share/applications/intellij.desktop
