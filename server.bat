@echo off
java -Xmx1024M -Xms1024M -jar server.jar nogui
git init
git add .
git commit -m "save server in Github"
git remote add origin "github.com/hanjae0205/seuver.git"
git push -u origin main
