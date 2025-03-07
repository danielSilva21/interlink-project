cd .. 
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image frontend/docker-compose.yml && mv docker-compose.png frontend.docker-compose.png
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image backend-proxy/docker-compose.yml && mv docker-compose.png coproduction.docker-compose.png
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image backend-coproduction/docker-compose.yml && mv docker-compose.png coproduction.docker-compose.png
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image backend-catalogue/docker-compose.yml && mv docker-compose.png catalogue.docker-compose.png
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image backend-auth/docker-compose.yml && mv docker-compose.png auth.docker-compose.png
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image backend-teammanagement/docker-compose.yml && mv docker-compose.png teammanagement.docker-compose.png

# interlinkers
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image interlinker-forum/docker-compose.yml && mv docker-compose.png forum.docker-compose.png
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image interlinker-ceditor/docker-compose.yml && mv docker-compose.png ceditor.docker-compose.png
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image interlinker-googledrive/docker-compose.yml && mv docker-compose.png googledrive.docker-compose.png
docker run --rm -it --name dcv -v $(pwd):/input pmsipilot/docker-compose-viz render -m image interlinker-filemanager/docker-compose.yml && mv docker-compose.png filemanager.docker-compose.png