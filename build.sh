sudo docker system prune -f
sudo docker build . -t mini-pupper-base:1.0 -f Dockerfile-Base
sudo docker build . -t mini-pupper-robot:1.0 -f Dockerfile-Robot
sudo docker build . -t mini-pupper-simulation:1.0 -f Dockerfile-Simulation 
