@echo off
git pull "https://github.com/hanjae0205/server.git"
echo "server started">./serverstart.txt
git init
git add .
git commit -m "Start server"
git push -u origin main
pause