#!/bin/bash

wget -c https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
tar zxvf postman*tar.gz
cp Postman/resources/app/assets/icon.png Postman/postman.png
mv Postman/Postman Postman/AppRun
cat > Postman/postman.desktop <<EOF
[Desktop Entry]
Version=1.0
Name=Postman
GenericName=Postman
Exec=./AppRun %U
Terminal=false
Icon=postman
Type=Application
Categories=Network;WebBrowser;
EOF

# Build
wget "https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage"
chmod +x appimagetool-x86_64.AppImage
./appimagetool-x86_64.AppImage Postman
