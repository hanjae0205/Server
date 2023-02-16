@echo off
git clone "https://github.com/hanjae0205/server.git"
java -Xmx1024M -Xms1024M -jar server.jar nogui
git init
git add .
git commit -m "save server in Github"
git push -u origin main