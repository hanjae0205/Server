chcp 65001
git pull "https://github.com/hanjae0205/server.git"
echo "server started">./serverstart.txt
git init
git add .
git commit -m "Start server"
git push -u origin main
java -Xmx1024M -Xms1024M -jar server.jar nogui
del ./serverstart.txt
git init
git add .
git commit -m "Stop&Save server in Github"
git push -u origin main