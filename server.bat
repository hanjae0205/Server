@echo off
git pull "https://github.com/hanjae0205/server.git"
echo "server started">./serverstart.txt
git init
git add
git commit -m "Start server"
git push -u origin main
java -Xmx1024M -Xms1024M -jar server.jar nogui
git init
git add .
git commit -m "save server in Github"
git push -u origin main