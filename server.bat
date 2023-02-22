@echo off
git pull "https://github.com/hanjae0205/server.git"
git commit -m "Start server"
java -Xmx1024M -Xms1024M -jar server.jar nogui
git init
git add .
git commit -m "save server in Github"
git push -u origin main