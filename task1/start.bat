@echo off

set IMAGE_NAME=2048-game

docker build -t %IMAGE_NAME% .

set PORT1=3000
set PORT2=3001

docker run -d -p %PORT1%:8080 --name container1 %IMAGE_NAME%

docker run -d -p %PORT2%:8080 --name container2 %IMAGE_NAME%