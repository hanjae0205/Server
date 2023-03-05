chcp 65001
git pull "https://github.com/hanjae0205/server.git"
echo "server started">./serverstart.txt
git init
git add .
git commit -m "@everyone 서버열림"
git push -u origin main
java -Xmx2G -Xms512M -jar server.jar nogui
del serverstart.txt
git init
git add .
git commit -m "@everyone 서버닫힘&저장중"
git push -u origin main